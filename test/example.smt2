;
; Simple trigonometric example with sine and cosine functions
; 简单的三角函数示例，包含正弦和余弦函数
;

; Set the logic to QF_NRA (Quantifier-Free Non-linear Real Arithmetic)
(set-logic QF_NRA)

; Declare variables
(declare-fun x () Real)

; Add constraints

; Basic trigonometric identity constraint: sin²(x) + cos²(x) = 1
(assert (= (sin x) 1))

; Variable range constraints
(assert (not (<= 0.0 x)))
(assert (<= x 3.1415926))

; Check satisfiability
(check-sat)

; Get model if satisfiable
(get-model)

; Exit
(exit) 
