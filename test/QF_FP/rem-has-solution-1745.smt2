(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.831066519295309280579431288060732185840606689453125p445 {+ 3742790866618450 445 (1.66361e+134)}
; Y = -1.8966444693734187953992886832566000521183013916015625p990 {- 4038127698153945 990 (-1.98464e+298)}
; 1.831066519295309280579431288060732185840606689453125p445 % -1.8966444693734187953992886832566000521183013916015625p990 == 1.831066519295309280579431288060732185840606689453125p445
; [HW: 1.831066519295309280579431288060732185840606689453125p445] 

; mpf : + 3742790866618450 445
; mpfd: + 3742790866618450 445 (1.66361e+134) class: Pos. norm. non-zero
; hwf : + 3742790866618450 445 (1.66361e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111100 #b1101010011000000110001101000000100101100100001010010)))
(assert (= y (fp #b1 #b11111011101 #b1110010110001010011111011111000000011001000111011001)))
(assert (= r (fp #b0 #b10110111100 #xd4c0c6812c852)))
(assert (= (fp.rem x y) r))
(minimize |c::main::$tmp::return_value_nondet_double$1@1!0&0#1| )
(check-sat)
(get-objectives)
(exit)
