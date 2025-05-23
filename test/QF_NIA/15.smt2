(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
 more info in 'N. P. Lopes, L. Aksoy, V. Manquinho, J. Monteiro.
 Optimally Solving the MCM Problem Using Pseudo-Boolean Satisfiability.
 Technical Report RT/43/2010, INESC-ID, Nov. 2010'. |)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
(declare-fun X6 () Int)
(declare-fun X7 () Int)
(declare-fun X8 () Int)
(declare-fun X9 () Int)
(declare-fun X10 () Int)
(declare-fun S0 () Int)
(declare-fun S1 () Int)
(declare-fun S2 () Int)
(declare-fun S3 () Int)
(declare-fun S4 () Int)
(declare-fun S5 () Int)
(declare-fun S6 () Int)
(declare-fun S7 () Int)
(declare-fun S8 () Int)
(declare-fun S9 () Int)
(declare-fun S10 () Int)
(declare-fun S11 () Int)
(declare-fun S12 () Int)
(declare-fun S13 () Int)
(define-fun power2 ((x Int)) Bool
  (or (= x 1024) (= x 512) (= x 256) (= x 128) (= x 64) (= x 32) (= x 16) (= x 8) (= x 4) (= x 2) (= x 1)))
(assert (or
 (= X4 (+ S0 S1))
 (= X4 (- S0 S1))
 (= X4 (+ (* 5 S0) S1))
 (= X4 (- (* 5 S0) S1))
 (= X4 (- S0 (* 5 S1)))
 (= X4 (+ (* 5 S0) (* 5 S1)))
 (= X4 (- (* 5 S0) (* 5 S1)))
 (= X4 (+ (* 5 S0) (* 27 S1)))
 (= X4 (- (* 5 S0) (* 27 S1)))
 (= X4 (- (* 27 S0) (* 5 S1)))
 (= X4 (+ (* 5 S0) (* 101 S1)))
 (= X4 (- (* 5 S0) (* 101 S1)))
 (= X4 (- (* 101 S0) (* 5 S1)))
 (= X4 (+ (* 5 S0) (* 411 S1)))
 (= X4 (- (* 5 S0) (* 411 S1)))
 (= X4 (- (* 411 S0) (* 5 S1)))
 (= X4 (+ (* 27 S0) S1))
 (= X4 (- (* 27 S0) S1))
 (= X4 (- S0 (* 27 S1)))
 (= X4 (+ (* 27 S0) (* 27 S1)))
 (= X4 (- (* 27 S0) (* 27 S1)))
 (= X4 (+ (* 27 S0) (* 101 S1)))
 (= X4 (- (* 27 S0) (* 101 S1)))
 (= X4 (- (* 101 S0) (* 27 S1)))
 (= X4 (+ (* 27 S0) (* 411 S1)))
 (= X4 (- (* 27 S0) (* 411 S1)))
 (= X4 (- (* 411 S0) (* 27 S1)))
 (= X4 (+ (* 101 S0) S1))
 (= X4 (- (* 101 S0) S1))
 (= X4 (- S0 (* 101 S1)))
 (= X4 (+ (* 101 S0) (* 101 S1)))
 (= X4 (- (* 101 S0) (* 101 S1)))
 (= X4 (+ (* 101 S0) (* 411 S1)))
 (= X4 (- (* 101 S0) (* 411 S1)))
 (= X4 (- (* 411 S0) (* 101 S1)))
 (= X4 (+ (* 411 S0) S1))
 (= X4 (- (* 411 S0) S1))
 (= X4 (- S0 (* 411 S1)))
 (= X4 (+ (* 411 S0) (* 411 S1)))
 (= X4 (- (* 411 S0) (* 411 S1)))
))
(assert (and (> X4 0) (< X4 2048) (power2 S0) (power2 S1)))
(assert (or
 (= X5 (+ (* 5 S2) S3))
 (= X5 (- (* 5 S2) S3))
 (= X5 (- S2 (* 5 S3)))
 (= X5 (+ (* 5 S2) (* 5 S3)))
 (= X5 (- (* 5 S2) (* 5 S3)))
 (= X5 (+ (* 5 S2) (* 27 S3)))
 (= X5 (- (* 5 S2) (* 27 S3)))
 (= X5 (- (* 27 S2) (* 5 S3)))
 (= X5 (+ (* 5 S2) (* 101 S3)))
 (= X5 (- (* 5 S2) (* 101 S3)))
 (= X5 (- (* 101 S2) (* 5 S3)))
 (= X5 (+ (* 5 S2) (* 411 S3)))
 (= X5 (- (* 5 S2) (* 411 S3)))
 (= X5 (- (* 411 S2) (* 5 S3)))
 (= X5 (+ (* 5 S2) (* X4 S3)))
 (= X5 (- (* 5 S2) (* X4 S3)))
 (= X5 (- (* X4 S2) (* 5 S3)))
 (= X5 (+ (* 27 S2) S3))
 (= X5 (- (* 27 S2) S3))
 (= X5 (- S2 (* 27 S3)))
 (= X5 (+ (* 27 S2) (* 27 S3)))
 (= X5 (- (* 27 S2) (* 27 S3)))
 (= X5 (+ (* 27 S2) (* 101 S3)))
 (= X5 (- (* 27 S2) (* 101 S3)))
 (= X5 (- (* 101 S2) (* 27 S3)))
 (= X5 (+ (* 27 S2) (* 411 S3)))
 (= X5 (- (* 27 S2) (* 411 S3)))
 (= X5 (- (* 411 S2) (* 27 S3)))
 (= X5 (+ (* 27 S2) (* X4 S3)))
 (= X5 (- (* 27 S2) (* X4 S3)))
 (= X5 (- (* X4 S2) (* 27 S3)))
 (= X5 (+ (* 101 S2) S3))
 (= X5 (- (* 101 S2) S3))
 (= X5 (- S2 (* 101 S3)))
 (= X5 (+ (* 101 S2) (* 101 S3)))
 (= X5 (- (* 101 S2) (* 101 S3)))
 (= X5 (+ (* 101 S2) (* 411 S3)))
 (= X5 (- (* 101 S2) (* 411 S3)))
 (= X5 (- (* 411 S2) (* 101 S3)))
 (= X5 (+ (* 101 S2) (* X4 S3)))
 (= X5 (- (* 101 S2) (* X4 S3)))
 (= X5 (- (* X4 S2) (* 101 S3)))
 (= X5 (+ (* 411 S2) S3))
 (= X5 (- (* 411 S2) S3))
 (= X5 (- S2 (* 411 S3)))
 (= X5 (+ (* 411 S2) (* 411 S3)))
 (= X5 (- (* 411 S2) (* 411 S3)))
 (= X5 (+ (* 411 S2) (* X4 S3)))
 (= X5 (- (* 411 S2) (* X4 S3)))
 (= X5 (- (* X4 S2) (* 411 S3)))
 (= X5 (+ (* X4 S2) S3))
 (= X5 (- (* X4 S2) S3))
 (= X5 (- S2 (* X4 S3)))
 (= X5 (+ (* X4 S2) (* X4 S3)))
 (= X5 (- (* X4 S2) (* X4 S3)))
))
(assert (and (> X5 0) (< X5 2048) (power2 S2) (power2 S3)))
(assert (or
 (= X6 (+ (* 5 S4) S5))
 (= X6 (- (* 5 S4) S5))
 (= X6 (- S4 (* 5 S5)))
 (= X6 (+ (* 5 S4) (* 5 S5)))
 (= X6 (- (* 5 S4) (* 5 S5)))
 (= X6 (+ (* 5 S4) (* 27 S5)))
 (= X6 (- (* 5 S4) (* 27 S5)))
 (= X6 (- (* 27 S4) (* 5 S5)))
 (= X6 (+ (* 5 S4) (* 101 S5)))
 (= X6 (- (* 5 S4) (* 101 S5)))
 (= X6 (- (* 101 S4) (* 5 S5)))
 (= X6 (+ (* 5 S4) (* 411 S5)))
 (= X6 (- (* 5 S4) (* 411 S5)))
 (= X6 (- (* 411 S4) (* 5 S5)))
 (= X6 (+ (* 5 S4) (* X4 S5)))
 (= X6 (- (* 5 S4) (* X4 S5)))
 (= X6 (- (* X4 S4) (* 5 S5)))
 (= X6 (+ (* 5 S4) (* X5 S5)))
 (= X6 (- (* 5 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* 5 S5)))
 (= X6 (+ (* 27 S4) S5))
 (= X6 (- (* 27 S4) S5))
 (= X6 (- S4 (* 27 S5)))
 (= X6 (+ (* 27 S4) (* 27 S5)))
 (= X6 (- (* 27 S4) (* 27 S5)))
 (= X6 (+ (* 27 S4) (* 101 S5)))
 (= X6 (- (* 27 S4) (* 101 S5)))
 (= X6 (- (* 101 S4) (* 27 S5)))
 (= X6 (+ (* 27 S4) (* 411 S5)))
 (= X6 (- (* 27 S4) (* 411 S5)))
 (= X6 (- (* 411 S4) (* 27 S5)))
 (= X6 (+ (* 27 S4) (* X4 S5)))
 (= X6 (- (* 27 S4) (* X4 S5)))
 (= X6 (- (* X4 S4) (* 27 S5)))
 (= X6 (+ (* 27 S4) (* X5 S5)))
 (= X6 (- (* 27 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* 27 S5)))
 (= X6 (+ (* 101 S4) S5))
 (= X6 (- (* 101 S4) S5))
 (= X6 (- S4 (* 101 S5)))
 (= X6 (+ (* 101 S4) (* 101 S5)))
 (= X6 (- (* 101 S4) (* 101 S5)))
 (= X6 (+ (* 101 S4) (* 411 S5)))
 (= X6 (- (* 101 S4) (* 411 S5)))
 (= X6 (- (* 411 S4) (* 101 S5)))
 (= X6 (+ (* 101 S4) (* X4 S5)))
 (= X6 (- (* 101 S4) (* X4 S5)))
 (= X6 (- (* X4 S4) (* 101 S5)))
 (= X6 (+ (* 101 S4) (* X5 S5)))
 (= X6 (- (* 101 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* 101 S5)))
 (= X6 (+ (* 411 S4) S5))
 (= X6 (- (* 411 S4) S5))
 (= X6 (- S4 (* 411 S5)))
 (= X6 (+ (* 411 S4) (* 411 S5)))
 (= X6 (- (* 411 S4) (* 411 S5)))
 (= X6 (+ (* 411 S4) (* X4 S5)))
 (= X6 (- (* 411 S4) (* X4 S5)))
 (= X6 (- (* X4 S4) (* 411 S5)))
 (= X6 (+ (* 411 S4) (* X5 S5)))
 (= X6 (- (* 411 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* 411 S5)))
 (= X6 (+ (* X4 S4) S5))
 (= X6 (- (* X4 S4) S5))
 (= X6 (- S4 (* X4 S5)))
 (= X6 (+ (* X4 S4) (* X4 S5)))
 (= X6 (- (* X4 S4) (* X4 S5)))
 (= X6 (+ (* X4 S4) (* X5 S5)))
 (= X6 (- (* X4 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* X4 S5)))
 (= X6 (+ (* X5 S4) S5))
 (= X6 (- (* X5 S4) S5))
 (= X6 (- S4 (* X5 S5)))
 (= X6 (+ (* X5 S4) (* X5 S5)))
 (= X6 (- (* X5 S4) (* X5 S5)))
))
(assert (and (> X6 0) (< X6 2048) (power2 S4) (power2 S5)))
(assert (or
 (= X7 (+ (* 5 S6) S7))
 (= X7 (- (* 5 S6) S7))
 (= X7 (- S6 (* 5 S7)))
 (= X7 (+ (* 5 S6) (* 5 S7)))
 (= X7 (- (* 5 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* 27 S7)))
 (= X7 (- (* 5 S6) (* 27 S7)))
 (= X7 (- (* 27 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* 101 S7)))
 (= X7 (- (* 5 S6) (* 101 S7)))
 (= X7 (- (* 101 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* 411 S7)))
 (= X7 (- (* 5 S6) (* 411 S7)))
 (= X7 (- (* 411 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* X4 S7)))
 (= X7 (- (* 5 S6) (* X4 S7)))
 (= X7 (- (* X4 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* X5 S7)))
 (= X7 (- (* 5 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* 5 S7)))
 (= X7 (+ (* 5 S6) (* X6 S7)))
 (= X7 (- (* 5 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* 5 S7)))
 (= X7 (+ (* 27 S6) S7))
 (= X7 (- (* 27 S6) S7))
 (= X7 (- S6 (* 27 S7)))
 (= X7 (+ (* 27 S6) (* 27 S7)))
 (= X7 (- (* 27 S6) (* 27 S7)))
 (= X7 (+ (* 27 S6) (* 101 S7)))
 (= X7 (- (* 27 S6) (* 101 S7)))
 (= X7 (- (* 101 S6) (* 27 S7)))
 (= X7 (+ (* 27 S6) (* 411 S7)))
 (= X7 (- (* 27 S6) (* 411 S7)))
 (= X7 (- (* 411 S6) (* 27 S7)))
 (= X7 (+ (* 27 S6) (* X4 S7)))
 (= X7 (- (* 27 S6) (* X4 S7)))
 (= X7 (- (* X4 S6) (* 27 S7)))
 (= X7 (+ (* 27 S6) (* X5 S7)))
 (= X7 (- (* 27 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* 27 S7)))
 (= X7 (+ (* 27 S6) (* X6 S7)))
 (= X7 (- (* 27 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* 27 S7)))
 (= X7 (+ (* 101 S6) S7))
 (= X7 (- (* 101 S6) S7))
 (= X7 (- S6 (* 101 S7)))
 (= X7 (+ (* 101 S6) (* 101 S7)))
 (= X7 (- (* 101 S6) (* 101 S7)))
 (= X7 (+ (* 101 S6) (* 411 S7)))
 (= X7 (- (* 101 S6) (* 411 S7)))
 (= X7 (- (* 411 S6) (* 101 S7)))
 (= X7 (+ (* 101 S6) (* X4 S7)))
 (= X7 (- (* 101 S6) (* X4 S7)))
 (= X7 (- (* X4 S6) (* 101 S7)))
 (= X7 (+ (* 101 S6) (* X5 S7)))
 (= X7 (- (* 101 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* 101 S7)))
 (= X7 (+ (* 101 S6) (* X6 S7)))
 (= X7 (- (* 101 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* 101 S7)))
 (= X7 (+ (* 411 S6) S7))
 (= X7 (- (* 411 S6) S7))
 (= X7 (- S6 (* 411 S7)))
 (= X7 (+ (* 411 S6) (* 411 S7)))
 (= X7 (- (* 411 S6) (* 411 S7)))
 (= X7 (+ (* 411 S6) (* X4 S7)))
 (= X7 (- (* 411 S6) (* X4 S7)))
 (= X7 (- (* X4 S6) (* 411 S7)))
 (= X7 (+ (* 411 S6) (* X5 S7)))
 (= X7 (- (* 411 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* 411 S7)))
 (= X7 (+ (* 411 S6) (* X6 S7)))
 (= X7 (- (* 411 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* 411 S7)))
 (= X7 (+ (* X4 S6) S7))
 (= X7 (- (* X4 S6) S7))
 (= X7 (- S6 (* X4 S7)))
 (= X7 (+ (* X4 S6) (* X4 S7)))
 (= X7 (- (* X4 S6) (* X4 S7)))
 (= X7 (+ (* X4 S6) (* X5 S7)))
 (= X7 (- (* X4 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* X4 S7)))
 (= X7 (+ (* X4 S6) (* X6 S7)))
 (= X7 (- (* X4 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* X4 S7)))
 (= X7 (+ (* X5 S6) S7))
 (= X7 (- (* X5 S6) S7))
 (= X7 (- S6 (* X5 S7)))
 (= X7 (+ (* X5 S6) (* X5 S7)))
 (= X7 (- (* X5 S6) (* X5 S7)))
 (= X7 (+ (* X5 S6) (* X6 S7)))
 (= X7 (- (* X5 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* X5 S7)))
 (= X7 (+ (* X6 S6) S7))
 (= X7 (- (* X6 S6) S7))
 (= X7 (- S6 (* X6 S7)))
 (= X7 (+ (* X6 S6) (* X6 S7)))
 (= X7 (- (* X6 S6) (* X6 S7)))
))
(assert (and (> X7 0) (< X7 2048) (power2 S6) (power2 S7)))
(assert (or
 (= X8 (+ (* 5 S8) S9))
 (= X8 (- (* 5 S8) S9))
 (= X8 (- S8 (* 5 S9)))
 (= X8 (+ (* 5 S8) (* 5 S9)))
 (= X8 (- (* 5 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* 27 S9)))
 (= X8 (- (* 5 S8) (* 27 S9)))
 (= X8 (- (* 27 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* 101 S9)))
 (= X8 (- (* 5 S8) (* 101 S9)))
 (= X8 (- (* 101 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* 411 S9)))
 (= X8 (- (* 5 S8) (* 411 S9)))
 (= X8 (- (* 411 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* X4 S9)))
 (= X8 (- (* 5 S8) (* X4 S9)))
 (= X8 (- (* X4 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* X5 S9)))
 (= X8 (- (* 5 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* X6 S9)))
 (= X8 (- (* 5 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* 5 S9)))
 (= X8 (+ (* 5 S8) (* X7 S9)))
 (= X8 (- (* 5 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* 5 S9)))
 (= X8 (+ (* 27 S8) S9))
 (= X8 (- (* 27 S8) S9))
 (= X8 (- S8 (* 27 S9)))
 (= X8 (+ (* 27 S8) (* 27 S9)))
 (= X8 (- (* 27 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* 101 S9)))
 (= X8 (- (* 27 S8) (* 101 S9)))
 (= X8 (- (* 101 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* 411 S9)))
 (= X8 (- (* 27 S8) (* 411 S9)))
 (= X8 (- (* 411 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* X4 S9)))
 (= X8 (- (* 27 S8) (* X4 S9)))
 (= X8 (- (* X4 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* X5 S9)))
 (= X8 (- (* 27 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* X6 S9)))
 (= X8 (- (* 27 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* 27 S9)))
 (= X8 (+ (* 27 S8) (* X7 S9)))
 (= X8 (- (* 27 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* 27 S9)))
 (= X8 (+ (* 101 S8) S9))
 (= X8 (- (* 101 S8) S9))
 (= X8 (- S8 (* 101 S9)))
 (= X8 (+ (* 101 S8) (* 101 S9)))
 (= X8 (- (* 101 S8) (* 101 S9)))
 (= X8 (+ (* 101 S8) (* 411 S9)))
 (= X8 (- (* 101 S8) (* 411 S9)))
 (= X8 (- (* 411 S8) (* 101 S9)))
 (= X8 (+ (* 101 S8) (* X4 S9)))
 (= X8 (- (* 101 S8) (* X4 S9)))
 (= X8 (- (* X4 S8) (* 101 S9)))
 (= X8 (+ (* 101 S8) (* X5 S9)))
 (= X8 (- (* 101 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* 101 S9)))
 (= X8 (+ (* 101 S8) (* X6 S9)))
 (= X8 (- (* 101 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* 101 S9)))
 (= X8 (+ (* 101 S8) (* X7 S9)))
 (= X8 (- (* 101 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* 101 S9)))
 (= X8 (+ (* 411 S8) S9))
 (= X8 (- (* 411 S8) S9))
 (= X8 (- S8 (* 411 S9)))
 (= X8 (+ (* 411 S8) (* 411 S9)))
 (= X8 (- (* 411 S8) (* 411 S9)))
 (= X8 (+ (* 411 S8) (* X4 S9)))
 (= X8 (- (* 411 S8) (* X4 S9)))
 (= X8 (- (* X4 S8) (* 411 S9)))
 (= X8 (+ (* 411 S8) (* X5 S9)))
 (= X8 (- (* 411 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* 411 S9)))
 (= X8 (+ (* 411 S8) (* X6 S9)))
 (= X8 (- (* 411 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* 411 S9)))
 (= X8 (+ (* 411 S8) (* X7 S9)))
 (= X8 (- (* 411 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* 411 S9)))
 (= X8 (+ (* X4 S8) S9))
 (= X8 (- (* X4 S8) S9))
 (= X8 (- S8 (* X4 S9)))
 (= X8 (+ (* X4 S8) (* X4 S9)))
 (= X8 (- (* X4 S8) (* X4 S9)))
 (= X8 (+ (* X4 S8) (* X5 S9)))
 (= X8 (- (* X4 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* X4 S9)))
 (= X8 (+ (* X4 S8) (* X6 S9)))
 (= X8 (- (* X4 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* X4 S9)))
 (= X8 (+ (* X4 S8) (* X7 S9)))
 (= X8 (- (* X4 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* X4 S9)))
 (= X8 (+ (* X5 S8) S9))
 (= X8 (- (* X5 S8) S9))
 (= X8 (- S8 (* X5 S9)))
 (= X8 (+ (* X5 S8) (* X5 S9)))
 (= X8 (- (* X5 S8) (* X5 S9)))
 (= X8 (+ (* X5 S8) (* X6 S9)))
 (= X8 (- (* X5 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* X5 S9)))
 (= X8 (+ (* X5 S8) (* X7 S9)))
 (= X8 (- (* X5 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* X5 S9)))
 (= X8 (+ (* X6 S8) S9))
 (= X8 (- (* X6 S8) S9))
 (= X8 (- S8 (* X6 S9)))
 (= X8 (+ (* X6 S8) (* X6 S9)))
 (= X8 (- (* X6 S8) (* X6 S9)))
 (= X8 (+ (* X6 S8) (* X7 S9)))
 (= X8 (- (* X6 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* X6 S9)))
 (= X8 (+ (* X7 S8) S9))
 (= X8 (- (* X7 S8) S9))
 (= X8 (- S8 (* X7 S9)))
 (= X8 (+ (* X7 S8) (* X7 S9)))
 (= X8 (- (* X7 S8) (* X7 S9)))
))
(assert (and (> X8 0) (< X8 2048) (power2 S8) (power2 S9)))
(assert (or
 (= X9 (+ (* 5 S10) S11))
 (= X9 (- (* 5 S10) S11))
 (= X9 (- S10 (* 5 S11)))
 (= X9 (+ (* 5 S10) (* 5 S11)))
 (= X9 (- (* 5 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* 27 S11)))
 (= X9 (- (* 5 S10) (* 27 S11)))
 (= X9 (- (* 27 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* 101 S11)))
 (= X9 (- (* 5 S10) (* 101 S11)))
 (= X9 (- (* 101 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* 411 S11)))
 (= X9 (- (* 5 S10) (* 411 S11)))
 (= X9 (- (* 411 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* X4 S11)))
 (= X9 (- (* 5 S10) (* X4 S11)))
 (= X9 (- (* X4 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* X5 S11)))
 (= X9 (- (* 5 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* X6 S11)))
 (= X9 (- (* 5 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* X7 S11)))
 (= X9 (- (* 5 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* 5 S11)))
 (= X9 (+ (* 5 S10) (* X8 S11)))
 (= X9 (- (* 5 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* 5 S11)))
 (= X9 (+ (* 27 S10) S11))
 (= X9 (- (* 27 S10) S11))
 (= X9 (- S10 (* 27 S11)))
 (= X9 (+ (* 27 S10) (* 27 S11)))
 (= X9 (- (* 27 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* 101 S11)))
 (= X9 (- (* 27 S10) (* 101 S11)))
 (= X9 (- (* 101 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* 411 S11)))
 (= X9 (- (* 27 S10) (* 411 S11)))
 (= X9 (- (* 411 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* X4 S11)))
 (= X9 (- (* 27 S10) (* X4 S11)))
 (= X9 (- (* X4 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* X5 S11)))
 (= X9 (- (* 27 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* X6 S11)))
 (= X9 (- (* 27 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* X7 S11)))
 (= X9 (- (* 27 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* 27 S11)))
 (= X9 (+ (* 27 S10) (* X8 S11)))
 (= X9 (- (* 27 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* 27 S11)))
 (= X9 (+ (* 101 S10) S11))
 (= X9 (- (* 101 S10) S11))
 (= X9 (- S10 (* 101 S11)))
 (= X9 (+ (* 101 S10) (* 101 S11)))
 (= X9 (- (* 101 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* 411 S11)))
 (= X9 (- (* 101 S10) (* 411 S11)))
 (= X9 (- (* 411 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* X4 S11)))
 (= X9 (- (* 101 S10) (* X4 S11)))
 (= X9 (- (* X4 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* X5 S11)))
 (= X9 (- (* 101 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* X6 S11)))
 (= X9 (- (* 101 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* X7 S11)))
 (= X9 (- (* 101 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* 101 S11)))
 (= X9 (+ (* 101 S10) (* X8 S11)))
 (= X9 (- (* 101 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* 101 S11)))
 (= X9 (+ (* 411 S10) S11))
 (= X9 (- (* 411 S10) S11))
 (= X9 (- S10 (* 411 S11)))
 (= X9 (+ (* 411 S10) (* 411 S11)))
 (= X9 (- (* 411 S10) (* 411 S11)))
 (= X9 (+ (* 411 S10) (* X4 S11)))
 (= X9 (- (* 411 S10) (* X4 S11)))
 (= X9 (- (* X4 S10) (* 411 S11)))
 (= X9 (+ (* 411 S10) (* X5 S11)))
 (= X9 (- (* 411 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* 411 S11)))
 (= X9 (+ (* 411 S10) (* X6 S11)))
 (= X9 (- (* 411 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* 411 S11)))
 (= X9 (+ (* 411 S10) (* X7 S11)))
 (= X9 (- (* 411 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* 411 S11)))
 (= X9 (+ (* 411 S10) (* X8 S11)))
 (= X9 (- (* 411 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* 411 S11)))
 (= X9 (+ (* X4 S10) S11))
 (= X9 (- (* X4 S10) S11))
 (= X9 (- S10 (* X4 S11)))
 (= X9 (+ (* X4 S10) (* X4 S11)))
 (= X9 (- (* X4 S10) (* X4 S11)))
 (= X9 (+ (* X4 S10) (* X5 S11)))
 (= X9 (- (* X4 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* X4 S11)))
 (= X9 (+ (* X4 S10) (* X6 S11)))
 (= X9 (- (* X4 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* X4 S11)))
 (= X9 (+ (* X4 S10) (* X7 S11)))
 (= X9 (- (* X4 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* X4 S11)))
 (= X9 (+ (* X4 S10) (* X8 S11)))
 (= X9 (- (* X4 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* X4 S11)))
 (= X9 (+ (* X5 S10) S11))
 (= X9 (- (* X5 S10) S11))
 (= X9 (- S10 (* X5 S11)))
 (= X9 (+ (* X5 S10) (* X5 S11)))
 (= X9 (- (* X5 S10) (* X5 S11)))
 (= X9 (+ (* X5 S10) (* X6 S11)))
 (= X9 (- (* X5 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* X5 S11)))
 (= X9 (+ (* X5 S10) (* X7 S11)))
 (= X9 (- (* X5 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* X5 S11)))
 (= X9 (+ (* X5 S10) (* X8 S11)))
 (= X9 (- (* X5 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* X5 S11)))
 (= X9 (+ (* X6 S10) S11))
 (= X9 (- (* X6 S10) S11))
 (= X9 (- S10 (* X6 S11)))
 (= X9 (+ (* X6 S10) (* X6 S11)))
 (= X9 (- (* X6 S10) (* X6 S11)))
 (= X9 (+ (* X6 S10) (* X7 S11)))
 (= X9 (- (* X6 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* X6 S11)))
 (= X9 (+ (* X6 S10) (* X8 S11)))
 (= X9 (- (* X6 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* X6 S11)))
 (= X9 (+ (* X7 S10) S11))
 (= X9 (- (* X7 S10) S11))
 (= X9 (- S10 (* X7 S11)))
 (= X9 (+ (* X7 S10) (* X7 S11)))
 (= X9 (- (* X7 S10) (* X7 S11)))
 (= X9 (+ (* X7 S10) (* X8 S11)))
 (= X9 (- (* X7 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* X7 S11)))
 (= X9 (+ (* X8 S10) S11))
 (= X9 (- (* X8 S10) S11))
 (= X9 (- S10 (* X8 S11)))
 (= X9 (+ (* X8 S10) (* X8 S11)))
 (= X9 (- (* X8 S10) (* X8 S11)))
))
(assert (and (> X9 0) (< X9 2048) (power2 S10) (power2 S11)))
(assert (or
 (= X10 (+ (* 5 S12) S13))
 (= X10 (- (* 5 S12) S13))
 (= X10 (- S12 (* 5 S13)))
 (= X10 (+ (* 5 S12) (* 5 S13)))
 (= X10 (- (* 5 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* 27 S13)))
 (= X10 (- (* 5 S12) (* 27 S13)))
 (= X10 (- (* 27 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* 101 S13)))
 (= X10 (- (* 5 S12) (* 101 S13)))
 (= X10 (- (* 101 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* 411 S13)))
 (= X10 (- (* 5 S12) (* 411 S13)))
 (= X10 (- (* 411 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X4 S13)))
 (= X10 (- (* 5 S12) (* X4 S13)))
 (= X10 (- (* X4 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X5 S13)))
 (= X10 (- (* 5 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X6 S13)))
 (= X10 (- (* 5 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X7 S13)))
 (= X10 (- (* 5 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X8 S13)))
 (= X10 (- (* 5 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* 5 S13)))
 (= X10 (+ (* 5 S12) (* X9 S13)))
 (= X10 (- (* 5 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* 5 S13)))
 (= X10 (+ (* 27 S12) S13))
 (= X10 (- (* 27 S12) S13))
 (= X10 (- S12 (* 27 S13)))
 (= X10 (+ (* 27 S12) (* 27 S13)))
 (= X10 (- (* 27 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* 101 S13)))
 (= X10 (- (* 27 S12) (* 101 S13)))
 (= X10 (- (* 101 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* 411 S13)))
 (= X10 (- (* 27 S12) (* 411 S13)))
 (= X10 (- (* 411 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X4 S13)))
 (= X10 (- (* 27 S12) (* X4 S13)))
 (= X10 (- (* X4 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X5 S13)))
 (= X10 (- (* 27 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X6 S13)))
 (= X10 (- (* 27 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X7 S13)))
 (= X10 (- (* 27 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X8 S13)))
 (= X10 (- (* 27 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* 27 S13)))
 (= X10 (+ (* 27 S12) (* X9 S13)))
 (= X10 (- (* 27 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* 27 S13)))
 (= X10 (+ (* 101 S12) S13))
 (= X10 (- (* 101 S12) S13))
 (= X10 (- S12 (* 101 S13)))
 (= X10 (+ (* 101 S12) (* 101 S13)))
 (= X10 (- (* 101 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* 411 S13)))
 (= X10 (- (* 101 S12) (* 411 S13)))
 (= X10 (- (* 411 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X4 S13)))
 (= X10 (- (* 101 S12) (* X4 S13)))
 (= X10 (- (* X4 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X5 S13)))
 (= X10 (- (* 101 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X6 S13)))
 (= X10 (- (* 101 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X7 S13)))
 (= X10 (- (* 101 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X8 S13)))
 (= X10 (- (* 101 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* 101 S13)))
 (= X10 (+ (* 101 S12) (* X9 S13)))
 (= X10 (- (* 101 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* 101 S13)))
 (= X10 (+ (* 411 S12) S13))
 (= X10 (- (* 411 S12) S13))
 (= X10 (- S12 (* 411 S13)))
 (= X10 (+ (* 411 S12) (* 411 S13)))
 (= X10 (- (* 411 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X4 S13)))
 (= X10 (- (* 411 S12) (* X4 S13)))
 (= X10 (- (* X4 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X5 S13)))
 (= X10 (- (* 411 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X6 S13)))
 (= X10 (- (* 411 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X7 S13)))
 (= X10 (- (* 411 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X8 S13)))
 (= X10 (- (* 411 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* 411 S13)))
 (= X10 (+ (* 411 S12) (* X9 S13)))
 (= X10 (- (* 411 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* 411 S13)))
 (= X10 (+ (* X4 S12) S13))
 (= X10 (- (* X4 S12) S13))
 (= X10 (- S12 (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X4 S13)))
 (= X10 (- (* X4 S12) (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X5 S13)))
 (= X10 (- (* X4 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X6 S13)))
 (= X10 (- (* X4 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X7 S13)))
 (= X10 (- (* X4 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X8 S13)))
 (= X10 (- (* X4 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* X4 S13)))
 (= X10 (+ (* X4 S12) (* X9 S13)))
 (= X10 (- (* X4 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X4 S13)))
 (= X10 (+ (* X5 S12) S13))
 (= X10 (- (* X5 S12) S13))
 (= X10 (- S12 (* X5 S13)))
 (= X10 (+ (* X5 S12) (* X5 S13)))
 (= X10 (- (* X5 S12) (* X5 S13)))
 (= X10 (+ (* X5 S12) (* X6 S13)))
 (= X10 (- (* X5 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* X5 S13)))
 (= X10 (+ (* X5 S12) (* X7 S13)))
 (= X10 (- (* X5 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* X5 S13)))
 (= X10 (+ (* X5 S12) (* X8 S13)))
 (= X10 (- (* X5 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* X5 S13)))
 (= X10 (+ (* X5 S12) (* X9 S13)))
 (= X10 (- (* X5 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X5 S13)))
 (= X10 (+ (* X6 S12) S13))
 (= X10 (- (* X6 S12) S13))
 (= X10 (- S12 (* X6 S13)))
 (= X10 (+ (* X6 S12) (* X6 S13)))
 (= X10 (- (* X6 S12) (* X6 S13)))
 (= X10 (+ (* X6 S12) (* X7 S13)))
 (= X10 (- (* X6 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* X6 S13)))
 (= X10 (+ (* X6 S12) (* X8 S13)))
 (= X10 (- (* X6 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* X6 S13)))
 (= X10 (+ (* X6 S12) (* X9 S13)))
 (= X10 (- (* X6 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X6 S13)))
 (= X10 (+ (* X7 S12) S13))
 (= X10 (- (* X7 S12) S13))
 (= X10 (- S12 (* X7 S13)))
 (= X10 (+ (* X7 S12) (* X7 S13)))
 (= X10 (- (* X7 S12) (* X7 S13)))
 (= X10 (+ (* X7 S12) (* X8 S13)))
 (= X10 (- (* X7 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* X7 S13)))
 (= X10 (+ (* X7 S12) (* X9 S13)))
 (= X10 (- (* X7 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X7 S13)))
 (= X10 (+ (* X8 S12) S13))
 (= X10 (- (* X8 S12) S13))
 (= X10 (- S12 (* X8 S13)))
 (= X10 (+ (* X8 S12) (* X8 S13)))
 (= X10 (- (* X8 S12) (* X8 S13)))
 (= X10 (+ (* X8 S12) (* X9 S13)))
 (= X10 (- (* X8 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X8 S13)))
 (= X10 (+ (* X9 S12) S13))
 (= X10 (- (* X9 S12) S13))
 (= X10 (- S12 (* X9 S13)))
 (= X10 (+ (* X9 S12) (* X9 S13)))
 (= X10 (- (* X9 S12) (* X9 S13)))
))
(assert (and (> X10 0) (< X10 2048) (power2 S12) (power2 S13)))
(assert (or
 (= X5 345)
 (= X6 345)
 (= X7 345)
 (= X8 345)
 (= X9 345)
 (= X10 345)
))
(assert (or
 (= X5 291)
 (= X6 291)
 (= X7 291)
 (= X8 291)
 (= X9 291)
 (= X10 291)
))
(assert (or
 (= X5 597)
 (= X6 597)
 (= X7 597)
 (= X8 597)
 (= X9 597)
 (= X10 597)
))
(assert (or
 (= X5 593)
 (= X6 593)
 (= X7 593)
 (= X8 593)
 (= X9 593)
 (= X10 593)
))
(assert (or
 (= X5 171)
 (= X6 171)
 (= X7 171)
 (= X8 171)
 (= X9 171)
 (= X10 171)
))
(assert (or
 (= X5 977)
 (= X6 977)
 (= X7 977)
 (= X8 977)
 (= X9 977)
 (= X10 977)
))
(minimize X4 )
(check-sat) 
(get-objectives)
(exit)
