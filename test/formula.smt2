;; 简单的SMT-LIB2示例文件
(set-logic QF_LIA)  ; 设置逻辑为量词无线性整数算术

;; 声明变量
(declare-const x Int)
(declare-const y Int)
(declare-const z Int)
(declare-const w Int)

;; 添加约束
(assert (>= x 0))
(assert (>= y 0))
(assert (>= z 0))
(assert (>= w 0))
(assert (<= (+ x y z w) 15))
(assert (>= (* 2 x) (+ y z)))
(assert (>= (* 2 y) (+ x z)))

;; 添加包含or的复杂约束
(assert (or (> x 5) (and (< y 3) (> z 2))))
(assert (or (= (* 2 x) (+ y z)) (>= w 4)))
(assert (or (and (< x 2) (> y 3)) (and (> z 4) (< w 2))))

;; 包含多层嵌套的约束
(assert (or 
  (and (= x 1) (= y 1))
  (and (> z 3) (or (= w 0) (>= (+ x y) 5)))
))

;; 检查可满足性
(check-sat)

;; 获取满足约束的值
(get-model) 