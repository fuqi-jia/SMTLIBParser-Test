;; 简单的SMT-LIB2示例文件
(set-logic QF_LIA)  ; 设置逻辑为量词无线性整数算术

;; 声明变量
(declare-const x Int)
(declare-const y Int)
(declare-const z Int)

;; 添加约束
(assert (>= x 0))
(assert (>= y 0))
(assert (>= z 0))
(assert (<= (+ x y z) 10))
(assert (>= (* 2 x) (+ y z)))
(assert (>= (* 2 y) (+ x z)))

;; 检查可满足性
(check-sat)

;; 获取满足约束的值
(get-model) 