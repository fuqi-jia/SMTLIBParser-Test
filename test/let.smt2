;
; 复杂非线性实数算术示例，使用多个let绑定
; 包含三角函数、多项式和指数函数
;

; 设置逻辑为QF_NRA (无量词非线性实数算术)
(set-logic QF_NRA)

; 声明变量
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun w () Real)

; 使用let绑定的复杂约束
(assert 
  (let ((angle_x (* 0.5 x))
        (angle_y (* 0.25 y)))
    (let ((sin_x (sin angle_x))
          (cos_y (cos angle_y)))
      (let ((trig_sum (+ (* sin_x sin_x) (* cos_y cos_y))))
        (> trig_sum 1.2)))))

; 多项式约束使用嵌套let
(assert 
  (let ((x_sq (* x x))
        (y_sq (* y y))
        (z_sq (* z z)))
    (let ((poly_1 (+ x_sq (* 2.0 y_sq) (* 3.0 z_sq)))
          (poly_2 (- (* 2.0 x_sq) (* y_sq) (* 0.5 z_sq))))
      (let ((combined (+ poly_1 (* 2.0 poly_2))))
        (< combined 50.0)))))

; 指数和对数函数约束
(assert 
  (let ((exp_x (^ (^ x 2.0) 0.5))
        (log_sum (+ (log y) (log z))))
    (let ((combined_exp (* exp_x log_sum)))
      (> combined_exp 2.0))))

; 复杂条件约束使用let
(assert 
  (let ((condition_1 (> x 0.0))
        (condition_2 (< y 5.0)))
    (let ((value_if_true (+ (* x y) (sin z)))
          (value_if_false (- (* x z) (cos y))))
      (let ((result (ite condition_1 
                      (ite condition_2 value_if_true (* 2.0 value_if_true))
                      value_if_false)))
        (> result 3.0)))))

; 混合多项式和三角函数约束
(assert 
  (let ((term_1 (* x y))
        (term_2 (* y z))
        (term_3 (* z w)))
    (let ((poly (+ term_1 term_2 term_3))
          (trig_term (+ (sin x) (cos y))))
      (let ((combined (- poly trig_term)))
        (and (> combined 1.0) (< combined 10.0))))))

; 变量范围约束
(assert (< -5.0 x))
(assert (< x 5.0))
(assert (< 0.1 y))
(assert (< y 10.0))
(assert (< -3.0 z))
(assert (< z 3.0))
(assert (< -1.0 w))
(assert (< w 1.0))

; 检查可满足性
(check-sat)

; 获取满足约束的值
(get-model)

; 退出
(exit) 
