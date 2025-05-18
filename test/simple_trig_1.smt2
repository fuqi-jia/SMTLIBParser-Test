;
; Simple trigonometric example with sine and cosine functions
; 简单的三角函数示例，包含正弦和余弦函数
;

; Set the logic to QF_NRA (Quantifier-Free Non-linear Real Arithmetic)
(set-logic QF_NRA)

; Declare variables
(declare-fun x () Real)
(declare-fun y () Real)

; Add constraints

; Basic trigonometric identity constraint: sin²(x) + cos²(x) = 1
(assert (= (+ (* (sin x) (sin x)) (* (cos x) (cos x))) 1.0))

; Value constraints
(assert (= (sin x) 0.5))  ; sin(x) = 0.5, which is sin(π/6) or sin(30°)
(assert (= (cos y) 0.5))  ; cos(y) = 0.5, which is cos(π/3) or cos(60°)

; Relationship between variables
(assert (= (+ x y) (/ pi 2)))  ; x + y is approximately π/2

; Variable range constraints
(assert (<= 0.0 x))
(assert (<= x pi))  ; 0 ≤ x ≤ π
(assert (<= 0.0 y))
(assert (<= y pi))  ; 0 ≤ y ≤ π

; Check satisfiability
(check-sat)

; Get model if satisfiable
(get-model)

; Exit
(exit) 