(set-logic QF_LRA)
(set-info :status unsat)

; 声明基本变量
(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)
(declare-fun e () Bool)
(declare-fun f () Bool)

(assert (= a (and (= e d) c d)))

(check-sat)
(get-model)