;
; Power and root functions example
; 幂函数和根函数示例
;

; Set the logic to QF_NRA (Quantifier-Free Non-linear Real Arithmetic)
(set-logic QF_NRA)

; Declare variables
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun w () Real)

; Add constraints

; Power function constraint: x^3 = y
(assert (= (^ x 3.0) y))

; Square root constraint: sqrt(z) = x
(assert (= (sqrt z) x))

; Combining powers and roots: x^2 * sqrt(w) = 10
(assert (= (* (^ x 2.0) (sqrt w)) 10.0))

; Additional constraints to ensure system has a specific solution
(assert (= (+ x y) 12.0))
(assert (= (+ z w) 20.0))

; Variable range constraints
(assert (<= 0.0 x))
(assert (<= x 5.0))   ; 0 ≤ x ≤ 5
(assert (<= -10.0 y))
(assert (<= y 125.0)) ; -10 ≤ y ≤ 125
(assert (<= 0.0 z))   ; z ≥ 0 (for sqrt to be defined)
(assert (<= z 25.0))  ; z ≤ 25
(assert (<= 0.0 w))   ; w ≥ 0 (for sqrt to be defined)
(assert (<= w 25.0))  ; w ≤ 25

; Check satisfiability
(check-sat)

; Get model if satisfiable
(get-model)

; Exit
(exit) 