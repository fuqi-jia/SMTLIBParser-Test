(set-logic QF_LRA)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)

(assert (>= x 0))
(assert (<= y 10))
(assert (= z (+ x y)))
(assert (<= z 15))

(check-sat)
(get-model)
