#!/bin/bash

# 确保脚本在出错时不会中断
set +e

# 定义颜色
if [ -t 1 ]; then  # 如果是终端
    GREEN="\033[32m"
    RED="\033[31m"
    YELLOW="\033[33m"
    RESET="\033[0m"
else
    GREEN=""
    RED=""
    YELLOW=""
    RESET=""
fi

# 定义变量
LOG_FILE="test_results.log"
SUMMARY_FILE="test_summary.log"
EXECUTABLE="../build/SMTParser_Test"
TEST_DIR=$(dirname "$0")

# 检查bc命令是否可用
if command -v bc > /dev/null 2>&1; then
    HAS_BC=true
else
    HAS_BC=false
    echo -e "${YELLOW}警告: 未找到bc命令，将使用整数时间计算${RESET}"
fi

# 检查操作系统类型
OS_TYPE=$(uname -s)
if [[ "$OS_TYPE" == "Darwin" ]]; then
    IS_MACOS=true
else
    IS_MACOS=false
fi

# 计算时间差函数
calc_time_diff() {
    if [ "$HAS_BC" = true ]; then
        echo "$1 - $2" | bc
    else
        # 简单地返回整数差值
        echo $(( ${1%.*} - ${2%.*} ))
    fi
}

# 添加浮点数函数
add_float() {
    if [ "$HAS_BC" = true ]; then
        echo "$1 + $2" | bc
    else
        # 使用整数加法作为替代
        echo $(( ${1%.*} + ${2%.*} ))
    fi
}

# 确保当前目录是test目录
cd "$TEST_DIR"

# 清空日志文件
echo "SMTParser 测试结果" > "$LOG_FILE"
echo "运行时间: $(date)" >> "$LOG_FILE"
echo "----------------------------------------" >> "$LOG_FILE"

# 清空摘要文件
echo "SMTParser 测试摘要" > "$SUMMARY_FILE"
echo "运行时间: $(date)" >> "$SUMMARY_FILE"
echo "----------------------------------------" >> "$SUMMARY_FILE"

# 确保可执行文件存在
if [ ! -f "$EXECUTABLE" ]; then
    echo -e "${RED}错误: 找不到可执行文件 $EXECUTABLE${RESET}" | tee -a "$LOG_FILE" "$SUMMARY_FILE"
    echo "请先构建项目." | tee -a "$LOG_FILE" "$SUMMARY_FILE"
    exit 1
fi

# 查找所有测试文件
echo "正在查找测试文件..." | tee -a "$LOG_FILE" "$SUMMARY_FILE"
mapfile -t SMT_FILES < <(find . -type f -name "*.smt2" | sort)

# 检查是否找到测试文件
if [ ${#SMT_FILES[@]} -eq 0 ]; then
    echo -e "${YELLOW}警告: 未找到任何测试文件!${RESET}" | tee -a "$LOG_FILE" "$SUMMARY_FILE"
    exit 0
fi

# 计算测试文件数量
NUM_FILES=${#SMT_FILES[@]}
echo "找到 $NUM_FILES 个测试文件." | tee -a "$LOG_FILE" "$SUMMARY_FILE"
echo "" >> "$LOG_FILE"
echo "" >> "$SUMMARY_FILE"

# 执行测试
SUCCESS_COUNT=0
FAILURE_COUNT=0
CRASH_COUNT=0
TOTAL_TIME=0

# 创建结果分组
echo "测试结果分组:" >> "$SUMMARY_FILE"
echo "----------------------------------------" >> "$SUMMARY_FILE"
echo "| 文件 | 结果 | 耗时(秒) |" >> "$SUMMARY_FILE"
echo "| ---- | ---- | -------- |" >> "$SUMMARY_FILE"

for file in "${SMT_FILES[@]}"; do
    # 确保文件名在日志中显示正确
    safe_file=$(echo "$file" | sed 's/|/\\|/g')
    
    echo "----------------------------------------" >> "$LOG_FILE"
    echo "测试文件: $file" | tee -a "$LOG_FILE"
    
    # 创建临时文件保存输出
    TEMP_OUTPUT=$(mktemp)
    
    # 记录开始时间
    if [ "$HAS_BC" = true ]; then
        if [ "$IS_MACOS" = true ]; then
            START_TIME=$(gdate +%s.%N 2>/dev/null || date +%s)
        else
            START_TIME=$(date +%s.%N)
        fi
    else
        START_TIME=$(date +%s)
    fi
    
    # 运行测试并捕获输出和段错误
    "$EXECUTABLE" "$file" > "$TEMP_OUTPUT" 2>&1
    EXIT_CODE=$?
    
    # 记录结束时间并计算用时
    if [ "$HAS_BC" = true ]; then
        if [ "$IS_MACOS" = true ]; then
            END_TIME=$(gdate +%s.%N 2>/dev/null || date +%s)
        else
            END_TIME=$(date +%s.%N)
        fi
    else
        END_TIME=$(date +%s)
    fi
    
    ELAPSED_TIME=$(calc_time_diff "$END_TIME" "$START_TIME")
    TOTAL_TIME=$(add_float "$TOTAL_TIME" "$ELAPSED_TIME")
    
    # 将输出添加到日志
    cat "$TEMP_OUTPUT" >> "$LOG_FILE"
    
    # 根据输出内容和退出码判断测试结果
    if [ $EXIT_CODE -eq 139 ] || [ $EXIT_CODE -eq 11 ] || grep -q "Segmentation fault" "$TEMP_OUTPUT"; then
        RESULT="${RED}! 崩溃${RESET}"
        RESULT_PLAIN="! 崩溃"
        echo -e "$RESULT - 段错误 (Segmentation fault)" | tee -a "$LOG_FILE"
        echo "| $safe_file | $RESULT_PLAIN | $ELAPSED_TIME |" >> "$SUMMARY_FILE"
        CRASH_COUNT=$((CRASH_COUNT + 1))
    elif grep -q "parse success" "$TEMP_OUTPUT"; then
        RESULT="${GREEN}✓ 成功${RESET}"
        RESULT_PLAIN="✓ 成功"
        echo -e "$RESULT - parse success" | tee -a "$LOG_FILE"
        echo "| $safe_file | $RESULT_PLAIN | $ELAPSED_TIME |" >> "$SUMMARY_FILE"
        SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
    elif grep -q "parse failed" "$TEMP_OUTPUT" || [ $EXIT_CODE -ne 0 ]; then
        RESULT="${RED}✗ 失败${RESET}"
        RESULT_PLAIN="✗ 失败"
        echo -e "$RESULT - parse failed" | tee -a "$LOG_FILE"
        echo "| $safe_file | $RESULT_PLAIN | $ELAPSED_TIME |" >> "$SUMMARY_FILE"
        FAILURE_COUNT=$((FAILURE_COUNT + 1))
    else
        RESULT="${YELLOW}? 未知${RESET}"
        RESULT_PLAIN="? 未知"
        echo -e "$RESULT - 没有发现'parse success'或'parse failed'" | tee -a "$LOG_FILE"
        echo "| $safe_file | $RESULT_PLAIN | $ELAPSED_TIME |" >> "$SUMMARY_FILE"
        FAILURE_COUNT=$((FAILURE_COUNT + 1))
    fi
    
    # 删除临时文件
    rm "$TEMP_OUTPUT"
    
    echo "" >> "$LOG_FILE"
done

# 打印测试结果摘要
echo "" >> "$SUMMARY_FILE"
echo "----------------------------------------" >> "$LOG_FILE" "$SUMMARY_FILE"
echo "测试摘要:" | tee -a "$LOG_FILE" "$SUMMARY_FILE"
echo "总测试文件数: $NUM_FILES" | tee -a "$LOG_FILE" "$SUMMARY_FILE"
echo -e "${GREEN}成功: $SUCCESS_COUNT${RESET}" | tee -a "$LOG_FILE"
echo "成功: $SUCCESS_COUNT" >> "$SUMMARY_FILE"
echo -e "${RED}失败: $FAILURE_COUNT${RESET}" | tee -a "$LOG_FILE"
echo "失败: $FAILURE_COUNT" >> "$SUMMARY_FILE"
echo -e "${RED}崩溃: $CRASH_COUNT${RESET}" | tee -a "$LOG_FILE"
echo "崩溃: $CRASH_COUNT" >> "$SUMMARY_FILE"
echo "总耗时: $TOTAL_TIME 秒" | tee -a "$LOG_FILE" "$SUMMARY_FILE"
echo "----------------------------------------" >> "$LOG_FILE" "$SUMMARY_FILE"

# 显示日志文件位置
echo ""
echo -e "${GREEN}测试完成！${RESET}"
echo "详细日志保存在: $TEST_DIR/$LOG_FILE"
echo "测试摘要保存在: $TEST_DIR/$SUMMARY_FILE"

# 如果有失败的测试，退出代码非零，但我们仍然希望脚本完成所有测试
# 所以只在显示摘要后再返回错误码
TOTAL_ERRORS=$((FAILURE_COUNT + CRASH_COUNT))
if [ $TOTAL_ERRORS -gt 0 ]; then
    exit 1
fi

exit 0
