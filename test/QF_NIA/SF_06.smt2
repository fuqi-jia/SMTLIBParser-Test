(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
Problem: Semi-magic sqaure of fifth power
Generate by: Fuqi Jia, Minghao Liu, Pei Huang, Feifei Ma, Jian Zhang
Generated on: 2022-02-28
Generator: https://github.com/MRVAPOR/math_puzzles_smtlib_generator
Application: Solving hard mathematical problems
Target solver: z3
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status unknown)
(declare-fun t () Int)
(declare-fun x_0_0 () Int)
(declare-fun x_0_1 () Int)
(declare-fun x_0_2 () Int)
(declare-fun x_0_3 () Int)
(declare-fun x_0_4 () Int)
(declare-fun x_0_5 () Int)
(declare-fun x_1_0 () Int)
(declare-fun x_1_1 () Int)
(declare-fun x_1_2 () Int)
(declare-fun x_1_3 () Int)
(declare-fun x_1_4 () Int)
(declare-fun x_1_5 () Int)
(declare-fun x_2_0 () Int)
(declare-fun x_2_1 () Int)
(declare-fun x_2_2 () Int)
(declare-fun x_2_3 () Int)
(declare-fun x_2_4 () Int)
(declare-fun x_2_5 () Int)
(declare-fun x_3_0 () Int)
(declare-fun x_3_1 () Int)
(declare-fun x_3_2 () Int)
(declare-fun x_3_3 () Int)
(declare-fun x_3_4 () Int)
(declare-fun x_3_5 () Int)
(declare-fun x_4_0 () Int)
(declare-fun x_4_1 () Int)
(declare-fun x_4_2 () Int)
(declare-fun x_4_3 () Int)
(declare-fun x_4_4 () Int)
(declare-fun x_4_5 () Int)
(declare-fun x_5_0 () Int)
(declare-fun x_5_1 () Int)
(declare-fun x_5_2 () Int)
(declare-fun x_5_3 () Int)
(declare-fun x_5_4 () Int)
(declare-fun x_5_5 () Int)
(assert (= (+ (* x_0_0 x_0_0 x_0_0 x_0_0 x_0_0) (* x_0_1 x_0_1 x_0_1 x_0_1 x_0_1) (* x_0_2 x_0_2 x_0_2 x_0_2 x_0_2) (* x_0_3 x_0_3 x_0_3 x_0_3 x_0_3) (* x_0_4 x_0_4 x_0_4 x_0_4 x_0_4) (* x_0_5 x_0_5 x_0_5 x_0_5 x_0_5) ) t))
(assert (= (+ (* x_1_0 x_1_0 x_1_0 x_1_0 x_1_0) (* x_1_1 x_1_1 x_1_1 x_1_1 x_1_1) (* x_1_2 x_1_2 x_1_2 x_1_2 x_1_2) (* x_1_3 x_1_3 x_1_3 x_1_3 x_1_3) (* x_1_4 x_1_4 x_1_4 x_1_4 x_1_4) (* x_1_5 x_1_5 x_1_5 x_1_5 x_1_5) ) t))
(assert (= (+ (* x_2_0 x_2_0 x_2_0 x_2_0 x_2_0) (* x_2_1 x_2_1 x_2_1 x_2_1 x_2_1) (* x_2_2 x_2_2 x_2_2 x_2_2 x_2_2) (* x_2_3 x_2_3 x_2_3 x_2_3 x_2_3) (* x_2_4 x_2_4 x_2_4 x_2_4 x_2_4) (* x_2_5 x_2_5 x_2_5 x_2_5 x_2_5) ) t))
(assert (= (+ (* x_3_0 x_3_0 x_3_0 x_3_0 x_3_0) (* x_3_1 x_3_1 x_3_1 x_3_1 x_3_1) (* x_3_2 x_3_2 x_3_2 x_3_2 x_3_2) (* x_3_3 x_3_3 x_3_3 x_3_3 x_3_3) (* x_3_4 x_3_4 x_3_4 x_3_4 x_3_4) (* x_3_5 x_3_5 x_3_5 x_3_5 x_3_5) ) t))
(assert (= (+ (* x_4_0 x_4_0 x_4_0 x_4_0 x_4_0) (* x_4_1 x_4_1 x_4_1 x_4_1 x_4_1) (* x_4_2 x_4_2 x_4_2 x_4_2 x_4_2) (* x_4_3 x_4_3 x_4_3 x_4_3 x_4_3) (* x_4_4 x_4_4 x_4_4 x_4_4 x_4_4) (* x_4_5 x_4_5 x_4_5 x_4_5 x_4_5) ) t))
(assert (= (+ (* x_5_0 x_5_0 x_5_0 x_5_0 x_5_0) (* x_5_1 x_5_1 x_5_1 x_5_1 x_5_1) (* x_5_2 x_5_2 x_5_2 x_5_2 x_5_2) (* x_5_3 x_5_3 x_5_3 x_5_3 x_5_3) (* x_5_4 x_5_4 x_5_4 x_5_4 x_5_4) (* x_5_5 x_5_5 x_5_5 x_5_5 x_5_5) ) t))
(assert (= (+ (* x_0_0 x_0_0 x_0_0 x_0_0 x_0_0) (* x_1_0 x_1_0 x_1_0 x_1_0 x_1_0) (* x_2_0 x_2_0 x_2_0 x_2_0 x_2_0) (* x_3_0 x_3_0 x_3_0 x_3_0 x_3_0) (* x_4_0 x_4_0 x_4_0 x_4_0 x_4_0) (* x_5_0 x_5_0 x_5_0 x_5_0 x_5_0) ) t))
(assert (= (+ (* x_0_1 x_0_1 x_0_1 x_0_1 x_0_1) (* x_1_1 x_1_1 x_1_1 x_1_1 x_1_1) (* x_2_1 x_2_1 x_2_1 x_2_1 x_2_1) (* x_3_1 x_3_1 x_3_1 x_3_1 x_3_1) (* x_4_1 x_4_1 x_4_1 x_4_1 x_4_1) (* x_5_1 x_5_1 x_5_1 x_5_1 x_5_1) ) t))
(assert (= (+ (* x_0_2 x_0_2 x_0_2 x_0_2 x_0_2) (* x_1_2 x_1_2 x_1_2 x_1_2 x_1_2) (* x_2_2 x_2_2 x_2_2 x_2_2 x_2_2) (* x_3_2 x_3_2 x_3_2 x_3_2 x_3_2) (* x_4_2 x_4_2 x_4_2 x_4_2 x_4_2) (* x_5_2 x_5_2 x_5_2 x_5_2 x_5_2) ) t))
(assert (= (+ (* x_0_3 x_0_3 x_0_3 x_0_3 x_0_3) (* x_1_3 x_1_3 x_1_3 x_1_3 x_1_3) (* x_2_3 x_2_3 x_2_3 x_2_3 x_2_3) (* x_3_3 x_3_3 x_3_3 x_3_3 x_3_3) (* x_4_3 x_4_3 x_4_3 x_4_3 x_4_3) (* x_5_3 x_5_3 x_5_3 x_5_3 x_5_3) ) t))
(assert (= (+ (* x_0_4 x_0_4 x_0_4 x_0_4 x_0_4) (* x_1_4 x_1_4 x_1_4 x_1_4 x_1_4) (* x_2_4 x_2_4 x_2_4 x_2_4 x_2_4) (* x_3_4 x_3_4 x_3_4 x_3_4 x_3_4) (* x_4_4 x_4_4 x_4_4 x_4_4 x_4_4) (* x_5_4 x_5_4 x_5_4 x_5_4 x_5_4) ) t))
(assert (= (+ (* x_0_5 x_0_5 x_0_5 x_0_5 x_0_5) (* x_1_5 x_1_5 x_1_5 x_1_5 x_1_5) (* x_2_5 x_2_5 x_2_5 x_2_5 x_2_5) (* x_3_5 x_3_5 x_3_5 x_3_5 x_3_5) (* x_4_5 x_4_5 x_4_5 x_4_5 x_4_5) (* x_5_5 x_5_5 x_5_5 x_5_5 x_5_5) ) t))
(assert (distinct x_0_0 x_0_1))
(assert (distinct x_0_0 x_0_2))
(assert (distinct x_0_0 x_0_3))
(assert (distinct x_0_0 x_0_4))
(assert (distinct x_0_0 x_0_5))
(assert (distinct x_0_0 x_1_0))
(assert (distinct x_0_0 x_1_1))
(assert (distinct x_0_0 x_1_2))
(assert (distinct x_0_0 x_1_3))
(assert (distinct x_0_0 x_1_4))
(assert (distinct x_0_0 x_1_5))
(assert (distinct x_0_0 x_2_0))
(assert (distinct x_0_0 x_2_1))
(assert (distinct x_0_0 x_2_2))
(assert (distinct x_0_0 x_2_3))
(assert (distinct x_0_0 x_2_4))
(assert (distinct x_0_0 x_2_5))
(assert (distinct x_0_0 x_3_0))
(assert (distinct x_0_0 x_3_1))
(assert (distinct x_0_0 x_3_2))
(assert (distinct x_0_0 x_3_3))
(assert (distinct x_0_0 x_3_4))
(assert (distinct x_0_0 x_3_5))
(assert (distinct x_0_0 x_4_0))
(assert (distinct x_0_0 x_4_1))
(assert (distinct x_0_0 x_4_2))
(assert (distinct x_0_0 x_4_3))
(assert (distinct x_0_0 x_4_4))
(assert (distinct x_0_0 x_4_5))
(assert (distinct x_0_0 x_5_0))
(assert (distinct x_0_0 x_5_1))
(assert (distinct x_0_0 x_5_2))
(assert (distinct x_0_0 x_5_3))
(assert (distinct x_0_0 x_5_4))
(assert (distinct x_0_0 x_5_5))
(assert (distinct x_0_1 x_0_2))
(assert (distinct x_0_1 x_0_3))
(assert (distinct x_0_1 x_0_4))
(assert (distinct x_0_1 x_0_5))
(assert (distinct x_0_1 x_1_0))
(assert (distinct x_0_1 x_1_1))
(assert (distinct x_0_1 x_1_2))
(assert (distinct x_0_1 x_1_3))
(assert (distinct x_0_1 x_1_4))
(assert (distinct x_0_1 x_1_5))
(assert (distinct x_0_1 x_2_0))
(assert (distinct x_0_1 x_2_1))
(assert (distinct x_0_1 x_2_2))
(assert (distinct x_0_1 x_2_3))
(assert (distinct x_0_1 x_2_4))
(assert (distinct x_0_1 x_2_5))
(assert (distinct x_0_1 x_3_0))
(assert (distinct x_0_1 x_3_1))
(assert (distinct x_0_1 x_3_2))
(assert (distinct x_0_1 x_3_3))
(assert (distinct x_0_1 x_3_4))
(assert (distinct x_0_1 x_3_5))
(assert (distinct x_0_1 x_4_0))
(assert (distinct x_0_1 x_4_1))
(assert (distinct x_0_1 x_4_2))
(assert (distinct x_0_1 x_4_3))
(assert (distinct x_0_1 x_4_4))
(assert (distinct x_0_1 x_4_5))
(assert (distinct x_0_1 x_5_0))
(assert (distinct x_0_1 x_5_1))
(assert (distinct x_0_1 x_5_2))
(assert (distinct x_0_1 x_5_3))
(assert (distinct x_0_1 x_5_4))
(assert (distinct x_0_1 x_5_5))
(assert (distinct x_0_2 x_0_3))
(assert (distinct x_0_2 x_0_4))
(assert (distinct x_0_2 x_0_5))
(assert (distinct x_0_2 x_1_0))
(assert (distinct x_0_2 x_1_1))
(assert (distinct x_0_2 x_1_2))
(assert (distinct x_0_2 x_1_3))
(assert (distinct x_0_2 x_1_4))
(assert (distinct x_0_2 x_1_5))
(assert (distinct x_0_2 x_2_0))
(assert (distinct x_0_2 x_2_1))
(assert (distinct x_0_2 x_2_2))
(assert (distinct x_0_2 x_2_3))
(assert (distinct x_0_2 x_2_4))
(assert (distinct x_0_2 x_2_5))
(assert (distinct x_0_2 x_3_0))
(assert (distinct x_0_2 x_3_1))
(assert (distinct x_0_2 x_3_2))
(assert (distinct x_0_2 x_3_3))
(assert (distinct x_0_2 x_3_4))
(assert (distinct x_0_2 x_3_5))
(assert (distinct x_0_2 x_4_0))
(assert (distinct x_0_2 x_4_1))
(assert (distinct x_0_2 x_4_2))
(assert (distinct x_0_2 x_4_3))
(assert (distinct x_0_2 x_4_4))
(assert (distinct x_0_2 x_4_5))
(assert (distinct x_0_2 x_5_0))
(assert (distinct x_0_2 x_5_1))
(assert (distinct x_0_2 x_5_2))
(assert (distinct x_0_2 x_5_3))
(assert (distinct x_0_2 x_5_4))
(assert (distinct x_0_2 x_5_5))
(assert (distinct x_0_3 x_0_4))
(assert (distinct x_0_3 x_0_5))
(assert (distinct x_0_3 x_1_0))
(assert (distinct x_0_3 x_1_1))
(assert (distinct x_0_3 x_1_2))
(assert (distinct x_0_3 x_1_3))
(assert (distinct x_0_3 x_1_4))
(assert (distinct x_0_3 x_1_5))
(assert (distinct x_0_3 x_2_0))
(assert (distinct x_0_3 x_2_1))
(assert (distinct x_0_3 x_2_2))
(assert (distinct x_0_3 x_2_3))
(assert (distinct x_0_3 x_2_4))
(assert (distinct x_0_3 x_2_5))
(assert (distinct x_0_3 x_3_0))
(assert (distinct x_0_3 x_3_1))
(assert (distinct x_0_3 x_3_2))
(assert (distinct x_0_3 x_3_3))
(assert (distinct x_0_3 x_3_4))
(assert (distinct x_0_3 x_3_5))
(assert (distinct x_0_3 x_4_0))
(assert (distinct x_0_3 x_4_1))
(assert (distinct x_0_3 x_4_2))
(assert (distinct x_0_3 x_4_3))
(assert (distinct x_0_3 x_4_4))
(assert (distinct x_0_3 x_4_5))
(assert (distinct x_0_3 x_5_0))
(assert (distinct x_0_3 x_5_1))
(assert (distinct x_0_3 x_5_2))
(assert (distinct x_0_3 x_5_3))
(assert (distinct x_0_3 x_5_4))
(assert (distinct x_0_3 x_5_5))
(assert (distinct x_0_4 x_0_5))
(assert (distinct x_0_4 x_1_0))
(assert (distinct x_0_4 x_1_1))
(assert (distinct x_0_4 x_1_2))
(assert (distinct x_0_4 x_1_3))
(assert (distinct x_0_4 x_1_4))
(assert (distinct x_0_4 x_1_5))
(assert (distinct x_0_4 x_2_0))
(assert (distinct x_0_4 x_2_1))
(assert (distinct x_0_4 x_2_2))
(assert (distinct x_0_4 x_2_3))
(assert (distinct x_0_4 x_2_4))
(assert (distinct x_0_4 x_2_5))
(assert (distinct x_0_4 x_3_0))
(assert (distinct x_0_4 x_3_1))
(assert (distinct x_0_4 x_3_2))
(assert (distinct x_0_4 x_3_3))
(assert (distinct x_0_4 x_3_4))
(assert (distinct x_0_4 x_3_5))
(assert (distinct x_0_4 x_4_0))
(assert (distinct x_0_4 x_4_1))
(assert (distinct x_0_4 x_4_2))
(assert (distinct x_0_4 x_4_3))
(assert (distinct x_0_4 x_4_4))
(assert (distinct x_0_4 x_4_5))
(assert (distinct x_0_4 x_5_0))
(assert (distinct x_0_4 x_5_1))
(assert (distinct x_0_4 x_5_2))
(assert (distinct x_0_4 x_5_3))
(assert (distinct x_0_4 x_5_4))
(assert (distinct x_0_4 x_5_5))
(assert (distinct x_0_5 x_1_0))
(assert (distinct x_0_5 x_1_1))
(assert (distinct x_0_5 x_1_2))
(assert (distinct x_0_5 x_1_3))
(assert (distinct x_0_5 x_1_4))
(assert (distinct x_0_5 x_1_5))
(assert (distinct x_0_5 x_2_0))
(assert (distinct x_0_5 x_2_1))
(assert (distinct x_0_5 x_2_2))
(assert (distinct x_0_5 x_2_3))
(assert (distinct x_0_5 x_2_4))
(assert (distinct x_0_5 x_2_5))
(assert (distinct x_0_5 x_3_0))
(assert (distinct x_0_5 x_3_1))
(assert (distinct x_0_5 x_3_2))
(assert (distinct x_0_5 x_3_3))
(assert (distinct x_0_5 x_3_4))
(assert (distinct x_0_5 x_3_5))
(assert (distinct x_0_5 x_4_0))
(assert (distinct x_0_5 x_4_1))
(assert (distinct x_0_5 x_4_2))
(assert (distinct x_0_5 x_4_3))
(assert (distinct x_0_5 x_4_4))
(assert (distinct x_0_5 x_4_5))
(assert (distinct x_0_5 x_5_0))
(assert (distinct x_0_5 x_5_1))
(assert (distinct x_0_5 x_5_2))
(assert (distinct x_0_5 x_5_3))
(assert (distinct x_0_5 x_5_4))
(assert (distinct x_0_5 x_5_5))
(assert (distinct x_1_0 x_1_1))
(assert (distinct x_1_0 x_1_2))
(assert (distinct x_1_0 x_1_3))
(assert (distinct x_1_0 x_1_4))
(assert (distinct x_1_0 x_1_5))
(assert (distinct x_1_0 x_2_0))
(assert (distinct x_1_0 x_2_1))
(assert (distinct x_1_0 x_2_2))
(assert (distinct x_1_0 x_2_3))
(assert (distinct x_1_0 x_2_4))
(assert (distinct x_1_0 x_2_5))
(assert (distinct x_1_0 x_3_0))
(assert (distinct x_1_0 x_3_1))
(assert (distinct x_1_0 x_3_2))
(assert (distinct x_1_0 x_3_3))
(assert (distinct x_1_0 x_3_4))
(assert (distinct x_1_0 x_3_5))
(assert (distinct x_1_0 x_4_0))
(assert (distinct x_1_0 x_4_1))
(assert (distinct x_1_0 x_4_2))
(assert (distinct x_1_0 x_4_3))
(assert (distinct x_1_0 x_4_4))
(assert (distinct x_1_0 x_4_5))
(assert (distinct x_1_0 x_5_0))
(assert (distinct x_1_0 x_5_1))
(assert (distinct x_1_0 x_5_2))
(assert (distinct x_1_0 x_5_3))
(assert (distinct x_1_0 x_5_4))
(assert (distinct x_1_0 x_5_5))
(assert (distinct x_1_1 x_1_2))
(assert (distinct x_1_1 x_1_3))
(assert (distinct x_1_1 x_1_4))
(assert (distinct x_1_1 x_1_5))
(assert (distinct x_1_1 x_2_0))
(assert (distinct x_1_1 x_2_1))
(assert (distinct x_1_1 x_2_2))
(assert (distinct x_1_1 x_2_3))
(assert (distinct x_1_1 x_2_4))
(assert (distinct x_1_1 x_2_5))
(assert (distinct x_1_1 x_3_0))
(assert (distinct x_1_1 x_3_1))
(assert (distinct x_1_1 x_3_2))
(assert (distinct x_1_1 x_3_3))
(assert (distinct x_1_1 x_3_4))
(assert (distinct x_1_1 x_3_5))
(assert (distinct x_1_1 x_4_0))
(assert (distinct x_1_1 x_4_1))
(assert (distinct x_1_1 x_4_2))
(assert (distinct x_1_1 x_4_3))
(assert (distinct x_1_1 x_4_4))
(assert (distinct x_1_1 x_4_5))
(assert (distinct x_1_1 x_5_0))
(assert (distinct x_1_1 x_5_1))
(assert (distinct x_1_1 x_5_2))
(assert (distinct x_1_1 x_5_3))
(assert (distinct x_1_1 x_5_4))
(assert (distinct x_1_1 x_5_5))
(assert (distinct x_1_2 x_1_3))
(assert (distinct x_1_2 x_1_4))
(assert (distinct x_1_2 x_1_5))
(assert (distinct x_1_2 x_2_0))
(assert (distinct x_1_2 x_2_1))
(assert (distinct x_1_2 x_2_2))
(assert (distinct x_1_2 x_2_3))
(assert (distinct x_1_2 x_2_4))
(assert (distinct x_1_2 x_2_5))
(assert (distinct x_1_2 x_3_0))
(assert (distinct x_1_2 x_3_1))
(assert (distinct x_1_2 x_3_2))
(assert (distinct x_1_2 x_3_3))
(assert (distinct x_1_2 x_3_4))
(assert (distinct x_1_2 x_3_5))
(assert (distinct x_1_2 x_4_0))
(assert (distinct x_1_2 x_4_1))
(assert (distinct x_1_2 x_4_2))
(assert (distinct x_1_2 x_4_3))
(assert (distinct x_1_2 x_4_4))
(assert (distinct x_1_2 x_4_5))
(assert (distinct x_1_2 x_5_0))
(assert (distinct x_1_2 x_5_1))
(assert (distinct x_1_2 x_5_2))
(assert (distinct x_1_2 x_5_3))
(assert (distinct x_1_2 x_5_4))
(assert (distinct x_1_2 x_5_5))
(assert (distinct x_1_3 x_1_4))
(assert (distinct x_1_3 x_1_5))
(assert (distinct x_1_3 x_2_0))
(assert (distinct x_1_3 x_2_1))
(assert (distinct x_1_3 x_2_2))
(assert (distinct x_1_3 x_2_3))
(assert (distinct x_1_3 x_2_4))
(assert (distinct x_1_3 x_2_5))
(assert (distinct x_1_3 x_3_0))
(assert (distinct x_1_3 x_3_1))
(assert (distinct x_1_3 x_3_2))
(assert (distinct x_1_3 x_3_3))
(assert (distinct x_1_3 x_3_4))
(assert (distinct x_1_3 x_3_5))
(assert (distinct x_1_3 x_4_0))
(assert (distinct x_1_3 x_4_1))
(assert (distinct x_1_3 x_4_2))
(assert (distinct x_1_3 x_4_3))
(assert (distinct x_1_3 x_4_4))
(assert (distinct x_1_3 x_4_5))
(assert (distinct x_1_3 x_5_0))
(assert (distinct x_1_3 x_5_1))
(assert (distinct x_1_3 x_5_2))
(assert (distinct x_1_3 x_5_3))
(assert (distinct x_1_3 x_5_4))
(assert (distinct x_1_3 x_5_5))
(assert (distinct x_1_4 x_1_5))
(assert (distinct x_1_4 x_2_0))
(assert (distinct x_1_4 x_2_1))
(assert (distinct x_1_4 x_2_2))
(assert (distinct x_1_4 x_2_3))
(assert (distinct x_1_4 x_2_4))
(assert (distinct x_1_4 x_2_5))
(assert (distinct x_1_4 x_3_0))
(assert (distinct x_1_4 x_3_1))
(assert (distinct x_1_4 x_3_2))
(assert (distinct x_1_4 x_3_3))
(assert (distinct x_1_4 x_3_4))
(assert (distinct x_1_4 x_3_5))
(assert (distinct x_1_4 x_4_0))
(assert (distinct x_1_4 x_4_1))
(assert (distinct x_1_4 x_4_2))
(assert (distinct x_1_4 x_4_3))
(assert (distinct x_1_4 x_4_4))
(assert (distinct x_1_4 x_4_5))
(assert (distinct x_1_4 x_5_0))
(assert (distinct x_1_4 x_5_1))
(assert (distinct x_1_4 x_5_2))
(assert (distinct x_1_4 x_5_3))
(assert (distinct x_1_4 x_5_4))
(assert (distinct x_1_4 x_5_5))
(assert (distinct x_1_5 x_2_0))
(assert (distinct x_1_5 x_2_1))
(assert (distinct x_1_5 x_2_2))
(assert (distinct x_1_5 x_2_3))
(assert (distinct x_1_5 x_2_4))
(assert (distinct x_1_5 x_2_5))
(assert (distinct x_1_5 x_3_0))
(assert (distinct x_1_5 x_3_1))
(assert (distinct x_1_5 x_3_2))
(assert (distinct x_1_5 x_3_3))
(assert (distinct x_1_5 x_3_4))
(assert (distinct x_1_5 x_3_5))
(assert (distinct x_1_5 x_4_0))
(assert (distinct x_1_5 x_4_1))
(assert (distinct x_1_5 x_4_2))
(assert (distinct x_1_5 x_4_3))
(assert (distinct x_1_5 x_4_4))
(assert (distinct x_1_5 x_4_5))
(assert (distinct x_1_5 x_5_0))
(assert (distinct x_1_5 x_5_1))
(assert (distinct x_1_5 x_5_2))
(assert (distinct x_1_5 x_5_3))
(assert (distinct x_1_5 x_5_4))
(assert (distinct x_1_5 x_5_5))
(assert (distinct x_2_0 x_2_1))
(assert (distinct x_2_0 x_2_2))
(assert (distinct x_2_0 x_2_3))
(assert (distinct x_2_0 x_2_4))
(assert (distinct x_2_0 x_2_5))
(assert (distinct x_2_0 x_3_0))
(assert (distinct x_2_0 x_3_1))
(assert (distinct x_2_0 x_3_2))
(assert (distinct x_2_0 x_3_3))
(assert (distinct x_2_0 x_3_4))
(assert (distinct x_2_0 x_3_5))
(assert (distinct x_2_0 x_4_0))
(assert (distinct x_2_0 x_4_1))
(assert (distinct x_2_0 x_4_2))
(assert (distinct x_2_0 x_4_3))
(assert (distinct x_2_0 x_4_4))
(assert (distinct x_2_0 x_4_5))
(assert (distinct x_2_0 x_5_0))
(assert (distinct x_2_0 x_5_1))
(assert (distinct x_2_0 x_5_2))
(assert (distinct x_2_0 x_5_3))
(assert (distinct x_2_0 x_5_4))
(assert (distinct x_2_0 x_5_5))
(assert (distinct x_2_1 x_2_2))
(assert (distinct x_2_1 x_2_3))
(assert (distinct x_2_1 x_2_4))
(assert (distinct x_2_1 x_2_5))
(assert (distinct x_2_1 x_3_0))
(assert (distinct x_2_1 x_3_1))
(assert (distinct x_2_1 x_3_2))
(assert (distinct x_2_1 x_3_3))
(assert (distinct x_2_1 x_3_4))
(assert (distinct x_2_1 x_3_5))
(assert (distinct x_2_1 x_4_0))
(assert (distinct x_2_1 x_4_1))
(assert (distinct x_2_1 x_4_2))
(assert (distinct x_2_1 x_4_3))
(assert (distinct x_2_1 x_4_4))
(assert (distinct x_2_1 x_4_5))
(assert (distinct x_2_1 x_5_0))
(assert (distinct x_2_1 x_5_1))
(assert (distinct x_2_1 x_5_2))
(assert (distinct x_2_1 x_5_3))
(assert (distinct x_2_1 x_5_4))
(assert (distinct x_2_1 x_5_5))
(assert (distinct x_2_2 x_2_3))
(assert (distinct x_2_2 x_2_4))
(assert (distinct x_2_2 x_2_5))
(assert (distinct x_2_2 x_3_0))
(assert (distinct x_2_2 x_3_1))
(assert (distinct x_2_2 x_3_2))
(assert (distinct x_2_2 x_3_3))
(assert (distinct x_2_2 x_3_4))
(assert (distinct x_2_2 x_3_5))
(assert (distinct x_2_2 x_4_0))
(assert (distinct x_2_2 x_4_1))
(assert (distinct x_2_2 x_4_2))
(assert (distinct x_2_2 x_4_3))
(assert (distinct x_2_2 x_4_4))
(assert (distinct x_2_2 x_4_5))
(assert (distinct x_2_2 x_5_0))
(assert (distinct x_2_2 x_5_1))
(assert (distinct x_2_2 x_5_2))
(assert (distinct x_2_2 x_5_3))
(assert (distinct x_2_2 x_5_4))
(assert (distinct x_2_2 x_5_5))
(assert (distinct x_2_3 x_2_4))
(assert (distinct x_2_3 x_2_5))
(assert (distinct x_2_3 x_3_0))
(assert (distinct x_2_3 x_3_1))
(assert (distinct x_2_3 x_3_2))
(assert (distinct x_2_3 x_3_3))
(assert (distinct x_2_3 x_3_4))
(assert (distinct x_2_3 x_3_5))
(assert (distinct x_2_3 x_4_0))
(assert (distinct x_2_3 x_4_1))
(assert (distinct x_2_3 x_4_2))
(assert (distinct x_2_3 x_4_3))
(assert (distinct x_2_3 x_4_4))
(assert (distinct x_2_3 x_4_5))
(assert (distinct x_2_3 x_5_0))
(assert (distinct x_2_3 x_5_1))
(assert (distinct x_2_3 x_5_2))
(assert (distinct x_2_3 x_5_3))
(assert (distinct x_2_3 x_5_4))
(assert (distinct x_2_3 x_5_5))
(assert (distinct x_2_4 x_2_5))
(assert (distinct x_2_4 x_3_0))
(assert (distinct x_2_4 x_3_1))
(assert (distinct x_2_4 x_3_2))
(assert (distinct x_2_4 x_3_3))
(assert (distinct x_2_4 x_3_4))
(assert (distinct x_2_4 x_3_5))
(assert (distinct x_2_4 x_4_0))
(assert (distinct x_2_4 x_4_1))
(assert (distinct x_2_4 x_4_2))
(assert (distinct x_2_4 x_4_3))
(assert (distinct x_2_4 x_4_4))
(assert (distinct x_2_4 x_4_5))
(assert (distinct x_2_4 x_5_0))
(assert (distinct x_2_4 x_5_1))
(assert (distinct x_2_4 x_5_2))
(assert (distinct x_2_4 x_5_3))
(assert (distinct x_2_4 x_5_4))
(assert (distinct x_2_4 x_5_5))
(assert (distinct x_2_5 x_3_0))
(assert (distinct x_2_5 x_3_1))
(assert (distinct x_2_5 x_3_2))
(assert (distinct x_2_5 x_3_3))
(assert (distinct x_2_5 x_3_4))
(assert (distinct x_2_5 x_3_5))
(assert (distinct x_2_5 x_4_0))
(assert (distinct x_2_5 x_4_1))
(assert (distinct x_2_5 x_4_2))
(assert (distinct x_2_5 x_4_3))
(assert (distinct x_2_5 x_4_4))
(assert (distinct x_2_5 x_4_5))
(assert (distinct x_2_5 x_5_0))
(assert (distinct x_2_5 x_5_1))
(assert (distinct x_2_5 x_5_2))
(assert (distinct x_2_5 x_5_3))
(assert (distinct x_2_5 x_5_4))
(assert (distinct x_2_5 x_5_5))
(assert (distinct x_3_0 x_3_1))
(assert (distinct x_3_0 x_3_2))
(assert (distinct x_3_0 x_3_3))
(assert (distinct x_3_0 x_3_4))
(assert (distinct x_3_0 x_3_5))
(assert (distinct x_3_0 x_4_0))
(assert (distinct x_3_0 x_4_1))
(assert (distinct x_3_0 x_4_2))
(assert (distinct x_3_0 x_4_3))
(assert (distinct x_3_0 x_4_4))
(assert (distinct x_3_0 x_4_5))
(assert (distinct x_3_0 x_5_0))
(assert (distinct x_3_0 x_5_1))
(assert (distinct x_3_0 x_5_2))
(assert (distinct x_3_0 x_5_3))
(assert (distinct x_3_0 x_5_4))
(assert (distinct x_3_0 x_5_5))
(assert (distinct x_3_1 x_3_2))
(assert (distinct x_3_1 x_3_3))
(assert (distinct x_3_1 x_3_4))
(assert (distinct x_3_1 x_3_5))
(assert (distinct x_3_1 x_4_0))
(assert (distinct x_3_1 x_4_1))
(assert (distinct x_3_1 x_4_2))
(assert (distinct x_3_1 x_4_3))
(assert (distinct x_3_1 x_4_4))
(assert (distinct x_3_1 x_4_5))
(assert (distinct x_3_1 x_5_0))
(assert (distinct x_3_1 x_5_1))
(assert (distinct x_3_1 x_5_2))
(assert (distinct x_3_1 x_5_3))
(assert (distinct x_3_1 x_5_4))
(assert (distinct x_3_1 x_5_5))
(assert (distinct x_3_2 x_3_3))
(assert (distinct x_3_2 x_3_4))
(assert (distinct x_3_2 x_3_5))
(assert (distinct x_3_2 x_4_0))
(assert (distinct x_3_2 x_4_1))
(assert (distinct x_3_2 x_4_2))
(assert (distinct x_3_2 x_4_3))
(assert (distinct x_3_2 x_4_4))
(assert (distinct x_3_2 x_4_5))
(assert (distinct x_3_2 x_5_0))
(assert (distinct x_3_2 x_5_1))
(assert (distinct x_3_2 x_5_2))
(assert (distinct x_3_2 x_5_3))
(assert (distinct x_3_2 x_5_4))
(assert (distinct x_3_2 x_5_5))
(assert (distinct x_3_3 x_3_4))
(assert (distinct x_3_3 x_3_5))
(assert (distinct x_3_3 x_4_0))
(assert (distinct x_3_3 x_4_1))
(assert (distinct x_3_3 x_4_2))
(assert (distinct x_3_3 x_4_3))
(assert (distinct x_3_3 x_4_4))
(assert (distinct x_3_3 x_4_5))
(assert (distinct x_3_3 x_5_0))
(assert (distinct x_3_3 x_5_1))
(assert (distinct x_3_3 x_5_2))
(assert (distinct x_3_3 x_5_3))
(assert (distinct x_3_3 x_5_4))
(assert (distinct x_3_3 x_5_5))
(assert (distinct x_3_4 x_3_5))
(assert (distinct x_3_4 x_4_0))
(assert (distinct x_3_4 x_4_1))
(assert (distinct x_3_4 x_4_2))
(assert (distinct x_3_4 x_4_3))
(assert (distinct x_3_4 x_4_4))
(assert (distinct x_3_4 x_4_5))
(assert (distinct x_3_4 x_5_0))
(assert (distinct x_3_4 x_5_1))
(assert (distinct x_3_4 x_5_2))
(assert (distinct x_3_4 x_5_3))
(assert (distinct x_3_4 x_5_4))
(assert (distinct x_3_4 x_5_5))
(assert (distinct x_3_5 x_4_0))
(assert (distinct x_3_5 x_4_1))
(assert (distinct x_3_5 x_4_2))
(assert (distinct x_3_5 x_4_3))
(assert (distinct x_3_5 x_4_4))
(assert (distinct x_3_5 x_4_5))
(assert (distinct x_3_5 x_5_0))
(assert (distinct x_3_5 x_5_1))
(assert (distinct x_3_5 x_5_2))
(assert (distinct x_3_5 x_5_3))
(assert (distinct x_3_5 x_5_4))
(assert (distinct x_3_5 x_5_5))
(assert (distinct x_4_0 x_4_1))
(assert (distinct x_4_0 x_4_2))
(assert (distinct x_4_0 x_4_3))
(assert (distinct x_4_0 x_4_4))
(assert (distinct x_4_0 x_4_5))
(assert (distinct x_4_0 x_5_0))
(assert (distinct x_4_0 x_5_1))
(assert (distinct x_4_0 x_5_2))
(assert (distinct x_4_0 x_5_3))
(assert (distinct x_4_0 x_5_4))
(assert (distinct x_4_0 x_5_5))
(assert (distinct x_4_1 x_4_2))
(assert (distinct x_4_1 x_4_3))
(assert (distinct x_4_1 x_4_4))
(assert (distinct x_4_1 x_4_5))
(assert (distinct x_4_1 x_5_0))
(assert (distinct x_4_1 x_5_1))
(assert (distinct x_4_1 x_5_2))
(assert (distinct x_4_1 x_5_3))
(assert (distinct x_4_1 x_5_4))
(assert (distinct x_4_1 x_5_5))
(assert (distinct x_4_2 x_4_3))
(assert (distinct x_4_2 x_4_4))
(assert (distinct x_4_2 x_4_5))
(assert (distinct x_4_2 x_5_0))
(assert (distinct x_4_2 x_5_1))
(assert (distinct x_4_2 x_5_2))
(assert (distinct x_4_2 x_5_3))
(assert (distinct x_4_2 x_5_4))
(assert (distinct x_4_2 x_5_5))
(assert (distinct x_4_3 x_4_4))
(assert (distinct x_4_3 x_4_5))
(assert (distinct x_4_3 x_5_0))
(assert (distinct x_4_3 x_5_1))
(assert (distinct x_4_3 x_5_2))
(assert (distinct x_4_3 x_5_3))
(assert (distinct x_4_3 x_5_4))
(assert (distinct x_4_3 x_5_5))
(assert (distinct x_4_4 x_4_5))
(assert (distinct x_4_4 x_5_0))
(assert (distinct x_4_4 x_5_1))
(assert (distinct x_4_4 x_5_2))
(assert (distinct x_4_4 x_5_3))
(assert (distinct x_4_4 x_5_4))
(assert (distinct x_4_4 x_5_5))
(assert (distinct x_4_5 x_5_0))
(assert (distinct x_4_5 x_5_1))
(assert (distinct x_4_5 x_5_2))
(assert (distinct x_4_5 x_5_3))
(assert (distinct x_4_5 x_5_4))
(assert (distinct x_4_5 x_5_5))
(assert (distinct x_5_0 x_5_1))
(assert (distinct x_5_0 x_5_2))
(assert (distinct x_5_0 x_5_3))
(assert (distinct x_5_0 x_5_4))
(assert (distinct x_5_0 x_5_5))
(assert (distinct x_5_1 x_5_2))
(assert (distinct x_5_1 x_5_3))
(assert (distinct x_5_1 x_5_4))
(assert (distinct x_5_1 x_5_5))
(assert (distinct x_5_2 x_5_3))
(assert (distinct x_5_2 x_5_4))
(assert (distinct x_5_2 x_5_5))
(assert (distinct x_5_3 x_5_4))
(assert (distinct x_5_3 x_5_5))
(assert (distinct x_5_4 x_5_5))
(assert (> x_0_0 0))
(assert (> x_0_1 0))
(assert (> x_0_2 0))
(assert (> x_0_3 0))
(assert (> x_0_4 0))
(assert (> x_0_5 0))
(assert (> x_1_0 0))
(assert (> x_1_1 0))
(assert (> x_1_2 0))
(assert (> x_1_3 0))
(assert (> x_1_4 0))
(assert (> x_1_5 0))
(assert (> x_2_0 0))
(assert (> x_2_1 0))
(assert (> x_2_2 0))
(assert (> x_2_3 0))
(assert (> x_2_4 0))
(assert (> x_2_5 0))
(assert (> x_3_0 0))
(assert (> x_3_1 0))
(assert (> x_3_2 0))
(assert (> x_3_3 0))
(assert (> x_3_4 0))
(assert (> x_3_5 0))
(assert (> x_4_0 0))
(assert (> x_4_1 0))
(assert (> x_4_2 0))
(assert (> x_4_3 0))
(assert (> x_4_4 0))
(assert (> x_4_5 0))
(assert (> x_5_0 0))
(assert (> x_5_1 0))
(assert (> x_5_2 0))
(assert (> x_5_3 0))
(assert (> x_5_4 0))
(assert (> x_5_5 0))
(minimize x_1_0 )
(check-sat) 
(get-objectives)
;;(get-assignment)
;;(get-model)
(exit)
