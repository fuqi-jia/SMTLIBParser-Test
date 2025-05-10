#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import subprocess
import sys
import concurrent.futures
import json
import multiprocessing
import argparse
from pathlib import Path

def find_smt2_files(directory):
    """递归查找目录中的所有.smt2文件"""
    smt2_files = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.smt2'):
                smt2_files.append(os.path.join(root, file))
    return smt2_files

def test_smt2_file(executable_path, smt2_file):
    """测试单个smt2文件，返回是否成功"""
    try:
        result = subprocess.run(
            [executable_path, smt2_file],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False
        )
        
        # 检查输出是否包含"parse success"
        if "parse success" in result.stdout:
            return (True, smt2_file, None)
        else:
            error_msg = f"错误信息: {result.stdout}\n错误输出: {result.stderr}"
            return (False, smt2_file, error_msg)
    except Exception as e:
        return (False, smt2_file, str(e))

def load_failed_files(file_path):
    """加载失败文件列表"""
    if os.path.exists(file_path):
        try:
            with open(file_path, 'r') as f:
                return json.load(f)
        except:
            return []
    return []

def save_failed_files(file_path, failed_files):
    """保存失败文件列表"""
    with open(file_path, 'w') as f:
        json.dump(failed_files, f, indent=2)

def main():
    # 使用argparse解析命令行参数
    parser = argparse.ArgumentParser(description='测试SMT2文件解析器')
    parser.add_argument('input', nargs='?', default='./test', 
                      help='输入路径：测试目录、单一SMT2文件或失败文件列表 (默认: ./test)')
    parser.add_argument('-e', '--executable', default='./build/SMTLIBParser_Test',
                        help='可执行文件路径 (默认: ./build/SMTLIBParser_Test)')
    parser.add_argument('-j', '--jobs', type=int, default=20,
                        help='并行进程数 (默认: 20)')
    
    args = parser.parse_args()
    
    # 获取参数值
    input_path = args.input
    executable = args.executable
    process_count = args.jobs
    
    failed_files_path = './failed_files.json'
    
    # 检查可执行文件是否存在
    if not os.path.isfile(executable):
        print(f"错误: 可执行文件 '{executable}' 不存在")
        print("请先编译项目或提供正确的可执行文件路径")
        return 1
    
    # 根据输入类型自动判断操作
    
    # 1. 如果是单一SMT2文件，直接测试该文件
    if os.path.isfile(input_path) and input_path.endswith('.smt2'):
        print(f"测试单一文件: {input_path}")
        success, _, error_msg = test_smt2_file(executable, input_path)
        if success:
            print(f"✅ 测试成功: {input_path}")
            return 0
        else:
            print(f"❌ 测试失败: {input_path}")
            if error_msg:
                print(error_msg)
            return 1
    
    # 2. 如果是JSON文件，假定为失败文件列表，测试其中的文件
    if os.path.isfile(input_path) and input_path.endswith('.json'):
        failed_files_path = input_path
        if os.path.getsize(failed_files_path) == 0:
            print(f"错误: 失败文件列表 '{failed_files_path}' 为空")
            return 1
        
        return test_failed_files(failed_files_path, executable, process_count)
    
    # 3. 如果是目录，测试目录中的所有文件
    if not os.path.isdir(input_path):
        print(f"错误: 输入路径 '{input_path}' 既不是.smt2文件、.json文件也不是目录")
        return 1
    
    test_path = input_path
    
    all_results = {}  # 存储所有测试结果
    
    # 测试目录中的所有文件
    print(f"正在查找 {test_path} 中的所有.smt2文件...")
    all_smt2_files = find_smt2_files(test_path)
    
    if not all_smt2_files:
        print(f"在 {test_path} 中没有找到.smt2文件")
        return 0
    
    # 过滤掉已经测试过的文件
    smt2_files = [f for f in all_smt2_files if f not in all_results]
    
    print(f"找到 {len(all_smt2_files)} 个文件，其中 {len(all_smt2_files) - len(smt2_files)} 个已测试，将测试剩余 {len(smt2_files)} 个文件")
    
    if smt2_files:
        print(f"使用 {process_count} 个进程进行并行测试")
        
        success_count = 0
        failed_files = []
        
        with concurrent.futures.ProcessPoolExecutor(max_workers=process_count) as executor:
            future_to_file = {executor.submit(test_smt2_file, executable, f): f for f in smt2_files}
            
            for i, future in enumerate(concurrent.futures.as_completed(future_to_file)):
                success, file_path, error_msg = future.result()
                print(f"[全部文件 {i+1}/{len(smt2_files)}] 测试: {file_path}")
                
                if success:
                    print(f"✅ 测试成功: {file_path}")
                    success_count += 1
                    all_results[file_path] = True
                else:
                    print(f"❌ 测试失败: {file_path}")
                    if error_msg:
                        print(error_msg)
                    failed_files.append(file_path)
                    all_results[file_path] = False
        
        print("\n全部文件测试结果汇总:")
        print(f"总文件数: {len(smt2_files)}")
        print(f"测试成功: {success_count}")
        print(f"测试失败: {len(failed_files)}")
        
        # 更新失败文件列表，合并之前的失败文件
        all_failed_files = []
        if os.path.exists(failed_files_path):
            all_failed_files = load_failed_files(failed_files_path)
        
        # 添加新的失败文件
        for f in failed_files:
            if f not in all_failed_files:
                all_failed_files.append(f)
        
        if all_failed_files:
            save_failed_files(failed_files_path, all_failed_files)
            print(f"\n失败文件列表已保存到: {failed_files_path}")
            print(f"共有 {len(all_failed_files)} 个文件失败")
        else:
            if os.path.exists(failed_files_path):
                os.remove(failed_files_path)
            print(f"\n所有测试都通过了，已删除失败文件列表")
    
    # 计算总体结果
    total_files = len(all_results)
    total_success = sum(1 for result in all_results.values() if result)
    total_failed = total_files - total_success
    
    print("\n总体测试结果汇总:")
    print(f"总文件数: {total_files}")
    print(f"测试成功: {total_success}")
    print(f"测试失败: {total_failed}")
    
    # 如果有失败的测试，返回非零退出码
    return 0 if total_failed == 0 else 1

def test_failed_files(failed_files_path, executable, process_count):
    """测试失败文件列表"""
    all_results = {}  # 存储所有测试结果
    failed_files = load_failed_files(failed_files_path)
    print(f"将测试 {len(failed_files)} 个失败文件")
    
    if failed_files:
        print(f"使用 {process_count} 个进程进行并行测试失败文件")
        success_count = 0
        still_failing = []
        
        with concurrent.futures.ProcessPoolExecutor(max_workers=process_count) as executor:
            future_to_file = {executor.submit(test_smt2_file, executable, f): f for f in failed_files}
            
            for i, future in enumerate(concurrent.futures.as_completed(future_to_file)):
                success, file_path, error_msg = future.result()
                print(f"[失败文件 {i+1}/{len(failed_files)}] 测试: {file_path}")
                
                if success:
                    print(f"✅ 测试成功: {file_path}")
                    success_count += 1
                    all_results[file_path] = True
                else:
                    print(f"❌ 测试失败: {file_path}")
                    if error_msg:
                        print(error_msg)
                    still_failing.append(file_path)
                    all_results[file_path] = False
        
        print("\n失败文件测试结果汇总:")
        print(f"总文件数: {len(failed_files)}")
        print(f"测试成功: {success_count}")
        print(f"测试失败: {len(still_failing)}")
        
        # 更新失败文件列表
        if still_failing:
            save_failed_files(failed_files_path, still_failing)
            print(f"更新失败文件列表到: {failed_files_path}")
        else:
            os.remove(failed_files_path)
            print(f"所有之前失败的文件现在都通过了测试，已删除失败文件列表")
            
        return 0 if len(still_failing) == 0 else 1
    
    return 0

def main_with_args(args):
    """使用指定参数运行main函数"""
    old_argv = sys.argv.copy()
    sys.argv = args
    try:
        return main()
    finally:
        sys.argv = old_argv

if __name__ == "__main__":
    sys.exit(main()) 
