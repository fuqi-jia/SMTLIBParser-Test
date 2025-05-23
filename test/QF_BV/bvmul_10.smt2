(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Checking the soundness of the translation of bvmul to base operations (bitwise ones, equality, and slicing).
Contributed by Gergely Kovasznai, Andreas Froehlich, and Armin Biere.
Institute for Formal Models and Verification, JKU, Linz, 2013.
source: http://fmv.jku.at/smtbench and "Complexity of Fixed-Size Bit-Vector Logics" by Gergely Kovasznai, Andreas Froehlich, and Armin Biere. Submitted to the journal Theory of Computing Systems in 2013.
|)
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun input1_0 () (_ BitVec 10))
(declare-fun input2_1 () (_ BitVec 10))
(declare-fun result_2 () (_ BitVec 10))
(assert (= result_2 (bvmul input1_0 input2_1)))
(declare-fun bvmul_x0_3 () (_ BitVec 256))
(declare-fun concat_result_4 () (_ BitVec 16))
(assert (= (_ bv0 6) ((_ extract 15 10) concat_result_4)))
(assert (= input1_0 ((_ extract 9 0) concat_result_4)))
(declare-fun concat_result_5 () (_ BitVec 32))
(assert (= concat_result_4 ((_ extract 31 16) concat_result_5)))
(assert (= concat_result_4 ((_ extract 15 0) concat_result_5)))
(declare-fun concat_result_6 () (_ BitVec 64))
(assert (= concat_result_5 ((_ extract 63 32) concat_result_6)))
(assert (= concat_result_5 ((_ extract 31 0) concat_result_6)))
(declare-fun concat_result_7 () (_ BitVec 128))
(assert (= concat_result_6 ((_ extract 127 64) concat_result_7)))
(assert (= concat_result_6 ((_ extract 63 0) concat_result_7)))
(declare-fun concat_result_8 () (_ BitVec 256))
(assert (= concat_result_7 ((_ extract 255 128) concat_result_8)))
(assert (= concat_result_7 ((_ extract 127 0) concat_result_8)))
(declare-fun concat_result_9 () (_ BitVec 16))
(assert (= (_ bv0 6) ((_ extract 15 10) concat_result_9)))
(assert (= input2_1 ((_ extract 9 0) concat_result_9)))
(declare-fun expand_x0_10 () (_ BitVec 256))
(declare-fun halfshuffle_x0_11 () (_ BitVec 256))
(declare-fun concat_result_12 () (_ BitVec 256))
(assert (= (_ bv0 240) ((_ extract 255 16) concat_result_12)))
(assert (= concat_result_9 ((_ extract 15 0) concat_result_12)))
(assert (= halfshuffle_x0_11 concat_result_12))
(declare-fun halfshuffle_x1_13 () (_ BitVec 256))
(declare-fun concat_result_14 () (_ BitVec 256))
(assert (= ((_ extract 135 0) halfshuffle_x0_11) ((_ extract 255 120) concat_result_14)))
(assert (= (_ bv0 120) ((_ extract 119 0) concat_result_14)))
(declare-fun concat_result_15 () (_ BitVec 16))
(assert (= (_ bv0 8) ((_ extract 15 8) concat_result_15)))
(assert (= (bvnot (_ bv0 8)) ((_ extract 7 0) concat_result_15)))
(declare-fun concat_result_16 () (_ BitVec 32))
(assert (= concat_result_15 ((_ extract 31 16) concat_result_16)))
(assert (= concat_result_15 ((_ extract 15 0) concat_result_16)))
(declare-fun concat_result_17 () (_ BitVec 64))
(assert (= concat_result_16 ((_ extract 63 32) concat_result_17)))
(assert (= concat_result_16 ((_ extract 31 0) concat_result_17)))
(declare-fun concat_result_18 () (_ BitVec 128))
(assert (= concat_result_17 ((_ extract 127 64) concat_result_18)))
(assert (= concat_result_17 ((_ extract 63 0) concat_result_18)))
(declare-fun concat_result_19 () (_ BitVec 256))
(assert (= concat_result_18 ((_ extract 255 128) concat_result_19)))
(assert (= concat_result_18 ((_ extract 127 0) concat_result_19)))
(assert (= halfshuffle_x1_13 (bvand (bvor halfshuffle_x0_11 concat_result_14) concat_result_19)))
(declare-fun halfshuffle_x2_20 () (_ BitVec 256))
(declare-fun concat_result_21 () (_ BitVec 256))
(assert (= ((_ extract 195 0) halfshuffle_x1_13) ((_ extract 255 60) concat_result_21)))
(assert (= (_ bv0 60) ((_ extract 59 0) concat_result_21)))
(declare-fun concat_result_22 () (_ BitVec 8))
(assert (= (_ bv0 4) ((_ extract 7 4) concat_result_22)))
(assert (= (bvnot (_ bv0 4)) ((_ extract 3 0) concat_result_22)))
(declare-fun concat_result_23 () (_ BitVec 16))
(assert (= concat_result_22 ((_ extract 15 8) concat_result_23)))
(assert (= concat_result_22 ((_ extract 7 0) concat_result_23)))
(declare-fun concat_result_24 () (_ BitVec 32))
(assert (= concat_result_23 ((_ extract 31 16) concat_result_24)))
(assert (= concat_result_23 ((_ extract 15 0) concat_result_24)))
(declare-fun concat_result_25 () (_ BitVec 64))
(assert (= concat_result_24 ((_ extract 63 32) concat_result_25)))
(assert (= concat_result_24 ((_ extract 31 0) concat_result_25)))
(declare-fun concat_result_26 () (_ BitVec 128))
(assert (= concat_result_25 ((_ extract 127 64) concat_result_26)))
(assert (= concat_result_25 ((_ extract 63 0) concat_result_26)))
(declare-fun concat_result_27 () (_ BitVec 256))
(assert (= concat_result_26 ((_ extract 255 128) concat_result_27)))
(assert (= concat_result_26 ((_ extract 127 0) concat_result_27)))
(assert (= halfshuffle_x2_20 (bvand (bvor halfshuffle_x1_13 concat_result_21) concat_result_27)))
(declare-fun halfshuffle_x3_28 () (_ BitVec 256))
(declare-fun concat_result_29 () (_ BitVec 256))
(assert (= ((_ extract 225 0) halfshuffle_x2_20) ((_ extract 255 30) concat_result_29)))
(assert (= (_ bv0 30) ((_ extract 29 0) concat_result_29)))
(declare-fun concat_result_30 () (_ BitVec 4))
(assert (= (_ bv0 2) ((_ extract 3 2) concat_result_30)))
(assert (= (bvnot (_ bv0 2)) ((_ extract 1 0) concat_result_30)))
(declare-fun concat_result_31 () (_ BitVec 8))
(assert (= concat_result_30 ((_ extract 7 4) concat_result_31)))
(assert (= concat_result_30 ((_ extract 3 0) concat_result_31)))
(declare-fun concat_result_32 () (_ BitVec 16))
(assert (= concat_result_31 ((_ extract 15 8) concat_result_32)))
(assert (= concat_result_31 ((_ extract 7 0) concat_result_32)))
(declare-fun concat_result_33 () (_ BitVec 32))
(assert (= concat_result_32 ((_ extract 31 16) concat_result_33)))
(assert (= concat_result_32 ((_ extract 15 0) concat_result_33)))
(declare-fun concat_result_34 () (_ BitVec 64))
(assert (= concat_result_33 ((_ extract 63 32) concat_result_34)))
(assert (= concat_result_33 ((_ extract 31 0) concat_result_34)))
(declare-fun concat_result_35 () (_ BitVec 128))
(assert (= concat_result_34 ((_ extract 127 64) concat_result_35)))
(assert (= concat_result_34 ((_ extract 63 0) concat_result_35)))
(declare-fun concat_result_36 () (_ BitVec 256))
(assert (= concat_result_35 ((_ extract 255 128) concat_result_36)))
(assert (= concat_result_35 ((_ extract 127 0) concat_result_36)))
(assert (= halfshuffle_x3_28 (bvand (bvor halfshuffle_x2_20 concat_result_29) concat_result_36)))
(declare-fun halfshuffle_x4_37 () (_ BitVec 256))
(declare-fun concat_result_38 () (_ BitVec 256))
(assert (= ((_ extract 240 0) halfshuffle_x3_28) ((_ extract 255 15) concat_result_38)))
(assert (= (_ bv0 15) ((_ extract 14 0) concat_result_38)))
(declare-fun concat_result_39 () (_ BitVec 2))
(assert (= (_ bv0 1) ((_ extract 1 1) concat_result_39)))
(assert (= (bvnot (_ bv0 1)) ((_ extract 0 0) concat_result_39)))
(declare-fun concat_result_40 () (_ BitVec 4))
(assert (= concat_result_39 ((_ extract 3 2) concat_result_40)))
(assert (= concat_result_39 ((_ extract 1 0) concat_result_40)))
(declare-fun concat_result_41 () (_ BitVec 8))
(assert (= concat_result_40 ((_ extract 7 4) concat_result_41)))
(assert (= concat_result_40 ((_ extract 3 0) concat_result_41)))
(declare-fun concat_result_42 () (_ BitVec 16))
(assert (= concat_result_41 ((_ extract 15 8) concat_result_42)))
(assert (= concat_result_41 ((_ extract 7 0) concat_result_42)))
(declare-fun concat_result_43 () (_ BitVec 32))
(assert (= concat_result_42 ((_ extract 31 16) concat_result_43)))
(assert (= concat_result_42 ((_ extract 15 0) concat_result_43)))
(declare-fun concat_result_44 () (_ BitVec 64))
(assert (= concat_result_43 ((_ extract 63 32) concat_result_44)))
(assert (= concat_result_43 ((_ extract 31 0) concat_result_44)))
(declare-fun concat_result_45 () (_ BitVec 128))
(assert (= concat_result_44 ((_ extract 127 64) concat_result_45)))
(assert (= concat_result_44 ((_ extract 63 0) concat_result_45)))
(declare-fun concat_result_46 () (_ BitVec 256))
(assert (= concat_result_45 ((_ extract 255 128) concat_result_46)))
(assert (= concat_result_45 ((_ extract 127 0) concat_result_46)))
(assert (= halfshuffle_x4_37 (bvand (bvor halfshuffle_x3_28 concat_result_38) concat_result_46)))
(assert (= expand_x0_10 halfshuffle_x4_37))
(declare-fun expand_x1_47 () (_ BitVec 256))
(declare-fun concat_result_48 () (_ BitVec 256))
(assert (= ((_ extract 254 0) expand_x0_10) ((_ extract 255 1) concat_result_48)))
(assert (= (_ bv0 1) ((_ extract 0 0) concat_result_48)))
(assert (= expand_x1_47 (bvor expand_x0_10 concat_result_48)))
(declare-fun expand_x2_49 () (_ BitVec 256))
(declare-fun concat_result_50 () (_ BitVec 256))
(assert (= ((_ extract 253 0) expand_x1_47) ((_ extract 255 2) concat_result_50)))
(assert (= (_ bv0 2) ((_ extract 1 0) concat_result_50)))
(assert (= expand_x2_49 (bvor expand_x1_47 concat_result_50)))
(declare-fun expand_x3_51 () (_ BitVec 256))
(declare-fun concat_result_52 () (_ BitVec 256))
(assert (= ((_ extract 251 0) expand_x2_49) ((_ extract 255 4) concat_result_52)))
(assert (= (_ bv0 4) ((_ extract 3 0) concat_result_52)))
(assert (= expand_x3_51 (bvor expand_x2_49 concat_result_52)))
(declare-fun expand_x4_53 () (_ BitVec 256))
(declare-fun concat_result_54 () (_ BitVec 256))
(assert (= ((_ extract 247 0) expand_x3_51) ((_ extract 255 8) concat_result_54)))
(assert (= (_ bv0 8) ((_ extract 7 0) concat_result_54)))
(assert (= expand_x4_53 (bvor expand_x3_51 concat_result_54)))
(assert (= bvmul_x0_3 (bvand concat_result_8 expand_x4_53)))
(declare-fun bvmul_b0_55 () (_ BitVec 256))
(declare-fun concat_result_56 () (_ BitVec 32))
(assert (= (_ bv0 16) ((_ extract 31 16) concat_result_56)))
(assert (= (bvnot (_ bv0 16)) ((_ extract 15 0) concat_result_56)))
(declare-fun concat_result_57 () (_ BitVec 64))
(assert (= concat_result_56 ((_ extract 63 32) concat_result_57)))
(assert (= concat_result_56 ((_ extract 31 0) concat_result_57)))
(declare-fun concat_result_58 () (_ BitVec 128))
(assert (= concat_result_57 ((_ extract 127 64) concat_result_58)))
(assert (= concat_result_57 ((_ extract 63 0) concat_result_58)))
(declare-fun concat_result_59 () (_ BitVec 256))
(assert (= concat_result_58 ((_ extract 255 128) concat_result_59)))
(assert (= concat_result_58 ((_ extract 127 0) concat_result_59)))
(assert (= bvmul_b0_55 concat_result_59))
(declare-fun bvmul_x1_60 () (_ BitVec 256))
(declare-fun concat_result_61 () (_ BitVec 256))
(assert (= (_ bv0 15) ((_ extract 255 241) concat_result_61)))
(assert (= ((_ extract 255 15) (bvand bvmul_x0_3 (bvnot bvmul_b0_55))) ((_ extract 240 0) concat_result_61)))
(declare-fun bvadd_result_62 () (_ BitVec 256))
(declare-fun cin_63 () (_ BitVec 256))
(declare-fun cout_64 () (_ BitVec 256))
(assert (= bvadd_result_62 (bvxor (bvxor (bvand bvmul_x0_3 bvmul_b0_55) concat_result_61) cin_63)))
(assert (= cout_64 (bvor (bvor (bvand (bvand bvmul_x0_3 bvmul_b0_55) concat_result_61) (bvand (bvand bvmul_x0_3 bvmul_b0_55) cin_63)) (bvand concat_result_61 cin_63))))
(declare-fun concat_result_65 () (_ BitVec 256))
(assert (= ((_ extract 254 0) cout_64) ((_ extract 255 1) concat_result_65)))
(assert (= (_ bv0 1) ((_ extract 0 0) concat_result_65)))
(assert (= cin_63 concat_result_65))
(assert (= bvmul_x1_60 bvadd_result_62))
(declare-fun bvmul_b1_66 () (_ BitVec 256))
(declare-fun concat_result_67 () (_ BitVec 64))
(assert (= (_ bv0 32) ((_ extract 63 32) concat_result_67)))
(assert (= (bvnot (_ bv0 32)) ((_ extract 31 0) concat_result_67)))
(declare-fun concat_result_68 () (_ BitVec 128))
(assert (= concat_result_67 ((_ extract 127 64) concat_result_68)))
(assert (= concat_result_67 ((_ extract 63 0) concat_result_68)))
(declare-fun concat_result_69 () (_ BitVec 256))
(assert (= concat_result_68 ((_ extract 255 128) concat_result_69)))
(assert (= concat_result_68 ((_ extract 127 0) concat_result_69)))
(assert (= bvmul_b1_66 concat_result_69))
(declare-fun bvmul_x2_70 () (_ BitVec 256))
(declare-fun concat_result_71 () (_ BitVec 256))
(assert (= (_ bv0 30) ((_ extract 255 226) concat_result_71)))
(assert (= ((_ extract 255 30) (bvand bvmul_x1_60 (bvnot bvmul_b1_66))) ((_ extract 225 0) concat_result_71)))
(declare-fun bvadd_result_72 () (_ BitVec 256))
(declare-fun cin_73 () (_ BitVec 256))
(declare-fun cout_74 () (_ BitVec 256))
(assert (= bvadd_result_72 (bvxor (bvxor (bvand bvmul_x1_60 bvmul_b1_66) concat_result_71) cin_73)))
(assert (= cout_74 (bvor (bvor (bvand (bvand bvmul_x1_60 bvmul_b1_66) concat_result_71) (bvand (bvand bvmul_x1_60 bvmul_b1_66) cin_73)) (bvand concat_result_71 cin_73))))
(declare-fun concat_result_75 () (_ BitVec 256))
(assert (= ((_ extract 254 0) cout_74) ((_ extract 255 1) concat_result_75)))
(assert (= (_ bv0 1) ((_ extract 0 0) concat_result_75)))
(assert (= cin_73 concat_result_75))
(assert (= bvmul_x2_70 bvadd_result_72))
(declare-fun bvmul_b2_76 () (_ BitVec 256))
(declare-fun concat_result_77 () (_ BitVec 128))
(assert (= (_ bv0 64) ((_ extract 127 64) concat_result_77)))
(assert (= (bvnot (_ bv0 64)) ((_ extract 63 0) concat_result_77)))
(declare-fun concat_result_78 () (_ BitVec 256))
(assert (= concat_result_77 ((_ extract 255 128) concat_result_78)))
(assert (= concat_result_77 ((_ extract 127 0) concat_result_78)))
(assert (= bvmul_b2_76 concat_result_78))
(declare-fun bvmul_x3_79 () (_ BitVec 256))
(declare-fun concat_result_80 () (_ BitVec 256))
(assert (= (_ bv0 60) ((_ extract 255 196) concat_result_80)))
(assert (= ((_ extract 255 60) (bvand bvmul_x2_70 (bvnot bvmul_b2_76))) ((_ extract 195 0) concat_result_80)))
(declare-fun bvadd_result_81 () (_ BitVec 256))
(declare-fun cin_82 () (_ BitVec 256))
(declare-fun cout_83 () (_ BitVec 256))
(assert (= bvadd_result_81 (bvxor (bvxor (bvand bvmul_x2_70 bvmul_b2_76) concat_result_80) cin_82)))
(assert (= cout_83 (bvor (bvor (bvand (bvand bvmul_x2_70 bvmul_b2_76) concat_result_80) (bvand (bvand bvmul_x2_70 bvmul_b2_76) cin_82)) (bvand concat_result_80 cin_82))))
(declare-fun concat_result_84 () (_ BitVec 256))
(assert (= ((_ extract 254 0) cout_83) ((_ extract 255 1) concat_result_84)))
(assert (= (_ bv0 1) ((_ extract 0 0) concat_result_84)))
(assert (= cin_82 concat_result_84))
(assert (= bvmul_x3_79 bvadd_result_81))
(declare-fun bvmul_b3_85 () (_ BitVec 256))
(declare-fun concat_result_86 () (_ BitVec 256))
(assert (= (_ bv0 128) ((_ extract 255 128) concat_result_86)))
(assert (= (bvnot (_ bv0 128)) ((_ extract 127 0) concat_result_86)))
(assert (= bvmul_b3_85 concat_result_86))
(declare-fun bvmul_x4_87 () (_ BitVec 256))
(declare-fun concat_result_88 () (_ BitVec 256))
(assert (= (_ bv0 120) ((_ extract 255 136) concat_result_88)))
(assert (= ((_ extract 255 120) (bvand bvmul_x3_79 (bvnot bvmul_b3_85))) ((_ extract 135 0) concat_result_88)))
(declare-fun bvadd_result_89 () (_ BitVec 256))
(declare-fun cin_90 () (_ BitVec 256))
(declare-fun cout_91 () (_ BitVec 256))
(assert (= bvadd_result_89 (bvxor (bvxor (bvand bvmul_x3_79 bvmul_b3_85) concat_result_88) cin_90)))
(assert (= cout_91 (bvor (bvor (bvand (bvand bvmul_x3_79 bvmul_b3_85) concat_result_88) (bvand (bvand bvmul_x3_79 bvmul_b3_85) cin_90)) (bvand concat_result_88 cin_90))))
(declare-fun concat_result_92 () (_ BitVec 256))
(assert (= ((_ extract 254 0) cout_91) ((_ extract 255 1) concat_result_92)))
(assert (= (_ bv0 1) ((_ extract 0 0) concat_result_92)))
(assert (= cin_90 concat_result_92))
(assert (= bvmul_x4_87 bvadd_result_89))
(assert (not (= result_2 ((_ extract 9 0) bvmul_x4_87))))
(minimize input1_0 )
(check-sat)
(get-objectives)
(exit)
