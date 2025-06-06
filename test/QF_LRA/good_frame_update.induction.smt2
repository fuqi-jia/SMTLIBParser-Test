(set-info :smt-lib-version 2.6)
(set-logic QF_LRA)
(set-info :source |
The Formal Verification of a Reintegration Protocol. Author: Lee Pike. Website: http://www.cs.indiana.edu/~lepike/pub_pages/emsoft.html.

This benchmark was automatically translated into SMT-LIB format from
CVC format using CVC Lite
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x_0 () Bool)
(declare-fun x_1 () Real)
(declare-fun x_2 () Real)
(declare-fun x_3 () Real)
(declare-fun x_4 () Bool)
(declare-fun x_5 () Real)
(declare-fun x_6 () Real)
(declare-fun x_7 () Bool)
(declare-fun x_8 () Bool)
(declare-fun x_9 () Real)
(declare-fun x_10 () Real)
(declare-fun x_11 () Bool)
(declare-fun x_12 () Bool)
(declare-fun x_13 () Bool)
(declare-fun x_14 () Bool)
(declare-fun x_15 () Bool)
(declare-fun x_16 () Bool)
(declare-fun x_17 () Bool)
(declare-fun x_18 () Bool)
(declare-fun x_19 () Bool)
(declare-fun x_20 () Bool)
(declare-fun x_21 () Bool)
(declare-fun x_22 () Bool)
(declare-fun x_23 () Real)
(declare-fun x_24 () Real)
(declare-fun x_25 () Real)
(declare-fun x_26 () Real)
(declare-fun x_27 () Real)
(declare-fun x_28 () Real)
(declare-fun x_29 () Real)
(declare-fun x_30 () Bool)
(declare-fun x_31 () Bool)
(declare-fun x_32 () Bool)
(declare-fun x_33 () Bool)
(declare-fun x_34 () Bool)
(declare-fun x_35 () Bool)
(declare-fun x_36 () Bool)
(declare-fun x_37 () Bool)
(declare-fun x_38 () Bool)
(declare-fun x_39 () Bool)
(declare-fun x_40 () Real)
(declare-fun x_41 () Real)
(declare-fun x_42 () Real)
(declare-fun x_43 () Real)
(declare-fun x_44 () Real)
(declare-fun x_45 () Real)
(declare-fun x_46 () Real)
(declare-fun x_47 () Real)
(declare-fun x_48 () Real)
(declare-fun x_49 () Real)
(declare-fun x_50 () Real)
(declare-fun x_51 () Real)
(declare-fun x_52 () Real)
(declare-fun x_53 () Real)
(declare-fun x_54 () Real)
(declare-fun x_55 () Real)
(declare-fun x_56 () Real)
(declare-fun x_57 () Real)
(declare-fun x_58 () Real)
(declare-fun x_59 () Bool)
(declare-fun x_60 () Real)
(declare-fun x_61 () Bool)
(declare-fun x_62 () Bool)
(declare-fun x_63 () Bool)
(declare-fun x_64 () Bool)
(declare-fun x_65 () Bool)
(declare-fun x_66 () Bool)
(declare-fun x_67 () Real)
(declare-fun x_68 () Real)
(declare-fun x_69 () Real)
(declare-fun x_70 () Real)
(declare-fun x_71 () Bool)
(declare-fun x_72 () Bool)
(declare-fun x_73 () Bool)
(declare-fun x_74 () Bool)
(declare-fun x_75 () Bool)
(declare-fun x_76 () Real)
(declare-fun x_77 () Real)
(declare-fun x_78 () Real)
(declare-fun x_79 () Real)
(declare-fun x_80 () Real)
(declare-fun x_81 () Real)
(declare-fun x_82 () Real)
(declare-fun x_83 () Real)
(declare-fun x_84 () Real)
(declare-fun x_85 () Bool)
(declare-fun x_86 () Real)
(declare-fun x_87 () Real)
(declare-fun x_88 () Real)
(assert (let ((?v_93 (+ x_3 x_1)) (?v_135 (<= x_2 x_5)) (?v_118 (= x_7 x_8)) (?v_70 (= x_9 0)) (?v_78 (< x_2 x_10)) (?v_103 (= x_5 x_2)) (?v_125 (= x_9 2)) (?v_127 (= x_11 x_12)) (?v_128 (and (= x_13 x_14) (= x_15 x_16))) (?v_116 (= x_17 x_18)) (?v_117 (and (= x_19 x_20) (= x_21 x_22))) (?v_129 (= x_23 x_24)) (?v_130 (and (= x_25 x_26) (= x_27 x_28))) (?v_88 (= x_29 x_10)) (?v_115 (= x_30 x_31)) (?v_113 (= x_32 x_33)) (?v_114 (and (= x_34 x_35) (= x_36 x_37))) (?v_131 (= x_38 x_39)) (?v_134 (- x_6 x_3)) (?v_71 (= x_9 1)) (?v_110 (+ x_1 x_3)) (?v_106 (<= x_40 x_5))) (let ((?v_112 (= x_11 (or x_12 (and ?v_106 x_33)))) (?v_96 (<= x_43 ?v_93)) (?v_98 (<= x_44 ?v_93)) (?v_95 (<= x_43 x_1)) (?v_97 (<= x_44 x_1)) (?v_90 (not x_14)) (?v_119 (< x_43 x_2)) (?v_120 (= x_5 x_43)) (?v_92 (not x_16)) (?v_121 (< x_44 x_2)) (?v_122 (= x_5 x_44)) (?v_81 (not x_12)) (?v_136 (not ?v_135)) (?v_100 (not x_35)) (?v_101 (not x_37)) (?v_102 (not x_33))) (let ((?v_89 (not ?v_95))) (let ((?v_104 (and ?v_89 (<= x_43 x_5))) (?v_91 (not ?v_97))) (let ((?v_105 (and ?v_91 (<= x_44 x_5)))) (let ((?v_111 (and (= x_13 (or x_14 (and ?v_104 x_35))) (= x_15 (or x_16 (and ?v_105 x_37))))) (?v_99 (<= x_40 ?v_93)) (?v_123 (< x_40 x_2)) (?v_124 (= x_5 x_40)) (?v_107 (not ?v_96)) (?v_108 (not ?v_98)) (?v_1 (and (not (<= x_40 x_1)) ?v_106)) (?v_2 (and (not (<= x_45 x_1)) (<= x_45 x_5)))) (let ((?v_109 (not ?v_99)) (?v_31 (+ x_3 x_5)) (?v_72 (<= x_6 x_58)) (?v_56 (= x_59 x_7)) (?v_15 (= x_60 0)) (?v_16 (< x_6 x_29)) (?v_40 (= x_58 x_6)) (?v_63 (= x_60 2)) (?v_65 (= x_61 x_11)) (?v_66 (and (= x_62 x_13) (= x_63 x_15))) (?v_54 (= x_64 x_17)) (?v_55 (and (= x_65 x_19) (= x_66 x_21))) (?v_67 (= x_67 x_23)) (?v_68 (and (= x_68 x_25) (= x_69 x_27))) (?v_26 (= x_70 x_29)) (?v_53 (= x_71 x_30)) (?v_51 (= x_72 x_32)) (?v_52 (and (= x_73 x_34) (= x_74 x_36))) (?v_69 (= x_75 x_38)) (?v_73 (- x_76 x_3)) (?v_44 (= x_60 1)) (?v_48 (+ x_5 x_3)) (?v_43 (<= x_55 x_58))) (let ((?v_50 (= x_61 (or x_11 (and ?v_43 x_32)))) (?v_33 (<= x_52 ?v_31)) (?v_35 (<= x_53 ?v_31)) (?v_32 (<= x_52 x_5)) (?v_34 (<= x_53 x_5)) (?v_28 (not x_13)) (?v_57 (< x_52 x_6)) (?v_58 (= x_58 x_52)) (?v_30 (not x_15)) (?v_59 (< x_53 x_6)) (?v_60 (= x_58 x_53)) (?v_19 (not x_11)) (?v_74 (not ?v_72)) (?v_37 (not x_34)) (?v_38 (not x_36)) (?v_39 (not x_32))) (let ((?v_27 (not ?v_32))) (let ((?v_41 (and ?v_27 (<= x_52 x_58))) (?v_29 (not ?v_34))) (let ((?v_42 (and ?v_29 (<= x_53 x_58)))) (let ((?v_49 (and (= x_62 (or x_13 (and ?v_41 x_34))) (= x_63 (or x_15 (and ?v_42 x_36))))) (?v_36 (<= x_55 ?v_31)) (?v_61 (< x_55 x_6)) (?v_62 (= x_58 x_55)) (?v_45 (not ?v_33)) (?v_46 (not ?v_35)) (?v_138 (not (<= x_55 x_5)))) (let ((?v_7 (and ?v_138 ?v_43)) (?v_139 (not (<= x_56 x_5)))) (let ((?v_8 (and ?v_139 (<= x_56 x_58))) (?v_47 (not ?v_36)) (?v_87 (= x_23 0)) (?v_77 (= x_23 3)) (?v_83 (= x_25 0)) (?v_75 (= x_25 3)) (?v_85 (= x_27 0)) (?v_76 (= x_27 3)) (?v_25 (= x_67 0)) (?v_14 (= x_67 3)) (?v_21 (= x_68 0)) (?v_12 (= x_68 3)) (?v_23 (= x_69 0)) (?v_13 (= x_69 3)) (?v_137 (not x_4)) (?v_3 (and (not (<= x_48 x_1)) (<= x_48 x_5))) (?v_9 (and (not (<= x_57 x_5)) (<= x_57 x_58))) (?v_17 (= x_68 (ite ?v_28 (ite (and ?v_41 (< x_25 3)) (+ x_25 1) x_25) x_25))) (?v_18 (= x_69 (ite ?v_30 (ite (and ?v_42 (< x_27 3)) (+ x_27 1) x_27) x_27)))) (let ((?v_20 (or x_13 ?v_12)) (?v_22 (or x_15 ?v_13)) (?v_24 (or x_11 ?v_14)) (?v_94 (not x_38)) (?v_79 (= x_25 (ite ?v_90 (ite (and ?v_104 (< x_26 3)) (+ x_26 1) x_26) x_26))) (?v_80 (= x_27 (ite ?v_92 (ite (and ?v_105 (< x_28 3)) (+ x_28 1) x_28) x_28))) (?v_82 (or x_14 ?v_75)) (?v_84 (or x_16 ?v_76)) (?v_86 (or x_12 ?v_77)) (?v_132 (= x_51 0)) (?v_133 (= x_51 1)) (?v_0 (ite ?v_1 2 1)) (?v_4 (ite ?v_1 3 2)) (?v_5 (ite ?v_1 1 0)) (?v_6 (ite ?v_7 2 1)) (?v_10 (ite ?v_7 3 2)) (?v_11 (ite ?v_7 1 0)) (?v_64 (<= (ite x_17 (ite x_21 (ite x_19 3 2) x_77) (ite x_21 x_77 (ite x_19 1 0))) (* (* (ite x_11 (ite x_15 (ite x_13 0 1) x_78) (ite x_15 x_78 (ite x_13 2 3))) 1) (/ 1 2)))) (?v_126 (<= (ite x_18 (ite x_22 (ite x_20 3 2) x_41) (ite x_22 x_41 (ite x_20 1 0))) (* (* (ite x_12 (ite x_16 (ite x_14 0 1) x_42) (ite x_16 x_42 (ite x_14 2 3))) 1) (/ 1 2))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= x_60 2) (>= x_60 0)) (<= x_51 2)) (>= x_51 0)) (<= x_9 2)) (>= x_9 0)) (>= x_1 0)) (>= x_2 0)) (> x_3 0)) (>= x_3 0)) (>= x_5 0)) (>= x_6 0)) (>= x_10 0)) (or (or (or ?v_87 (= x_23 1)) (= x_23 2)) ?v_77)) (not (< x_23 0))) (<= x_23 3)) (or (or (or (= x_24 0) (= x_24 1)) (= x_24 2)) (= x_24 3))) (not (< x_24 0))) (<= x_24 3)) (or (or (or ?v_83 (= x_25 1)) (= x_25 2)) ?v_75)) (not (< x_25 0))) (<= x_25 3)) (or (or (or (= x_26 0) (= x_26 1)) (= x_26 2)) (= x_26 3))) (not (< x_26 0))) (<= x_26 3)) (or (or (or ?v_85 (= x_27 1)) (= x_27 2)) ?v_76)) (not (< x_27 0))) (<= x_27 3)) (or (or (or (= x_28 0) (= x_28 1)) (= x_28 2)) (= x_28 3))) (not (< x_28 0))) (<= x_28 3)) (>= x_29 0)) (>= x_40 0)) (>= x_43 0)) (>= x_44 0)) (>= x_45 0)) (>= x_48 0)) (>= x_52 0)) (>= x_53 0)) (not (<= x_54 (* x_3 3)))) (>= x_54 0)) (>= x_55 0)) (>= x_56 0)) (>= x_57 0)) (>= x_58 0)) (or (or (or ?v_25 (= x_67 1)) (= x_67 2)) ?v_14)) (not (< x_67 0))) (<= x_67 3)) (or (or (or ?v_21 (= x_68 1)) (= x_68 2)) ?v_12)) (not (< x_68 0))) (<= x_68 3)) (or (or (or ?v_23 (= x_69 1)) (= x_69 2)) ?v_13)) (not (< x_69 0))) (<= x_69 3)) (>= x_70 0)) (>= x_76 0)) (>= x_83 0)) (>= x_84 0)) (>= x_86 0)) (>= x_87 0)) (>= x_88 0)) (or ?v_137 (<= x_5 ?v_134))) (or (not x_0) (<= x_1 (- x_2 x_3)))) (= x_41 (ite x_20 2 1))) (= x_42 (ite x_14 1 2))) (= x_46 ?v_0)) (= x_47 ?v_0)) (= x_49 (+ (ite ?v_3 (ite ?v_2 ?v_4 x_46) (ite ?v_2 x_46 ?v_5)) x_24))) (= x_50 (+ (ite ?v_3 (ite ?v_2 ?v_4 x_47) (ite ?v_2 x_47 ?v_5)) x_24))) (= x_77 (ite x_19 2 1))) (= x_78 (ite x_13 1 2))) (= x_79 ?v_6)) (= x_80 ?v_6)) (= x_81 (+ (ite ?v_9 (ite ?v_8 ?v_10 x_79) (ite ?v_8 x_79 ?v_11)) x_23))) (= x_82 (+ (ite ?v_9 (ite ?v_8 ?v_10 x_80) (ite ?v_8 x_80 ?v_11)) x_23))) (or (or (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and ?v_15 ?v_16) ?v_40) ?v_17) ?v_18) (= x_67 (ite ?v_19 (ite (not (< x_81 3)) 3 x_81) x_23))) (= x_62 ?v_20)) (= x_63 ?v_22)) (= x_61 ?v_24)) ?v_53) ?v_26) (and (and (and (and (and (and (and (and (and (and ?v_15 (not ?v_16)) x_71) (= x_58 x_29)) ?v_17) ?v_18) (= x_67 (ite ?v_19 (ite (not (< x_82 3)) 3 x_82) x_23))) (= x_62 (or ?v_20 ?v_21))) (= x_63 (or ?v_22 ?v_23))) (= x_61 (or ?v_24 ?v_25))) ?v_26)) ?v_51) ?v_52) ?v_69) ?v_54) ?v_55) ?v_56) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_44 (or (or (and (and (and ?v_27 ?v_28) ?v_37) ?v_33) (and (and (and ?v_29 ?v_30) ?v_38) ?v_35)) (and (and ?v_19 ?v_39) ?v_36))) (not x_75)) (or (or (or (or ?v_32 ?v_45) x_34) x_13) (not (< x_58 x_52)))) (or (or (or (or ?v_34 ?v_46) x_36) x_15) (not (< x_58 x_53)))) (or (or (or ?v_47 x_32) x_11) (not (< x_58 x_55)))) (or (or (or (and (and (and (and ?v_37 ?v_28) ?v_33) ?v_57) ?v_58) (and (and (and (and ?v_38 ?v_30) ?v_35) ?v_59) ?v_60)) (and (and (and (and ?v_39 ?v_19) ?v_36) ?v_61) ?v_62)) (and (< x_6 ?v_48) ?v_40))) (= x_73 (or x_34 ?v_41))) (= x_74 (or x_36 ?v_42))) (= x_72 (or x_32 ?v_43))) ?v_49) ?v_50) (and (and (and (and (and (and (and (and (and ?v_44 (or (or (or ?v_32 x_34) x_13) ?v_45)) (or (or (or ?v_34 x_36) x_15) ?v_46)) (or (or x_32 x_11) ?v_47)) x_75) (= x_58 ?v_48)) ?v_49) ?v_50) ?v_51) ?v_52)) ?v_67) ?v_68) ?v_26) ?v_53) ?v_54) ?v_55) ?v_56)) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_63 ?v_64) (not x_59)) (or (or (or ?v_32 x_19) x_13) (<= x_58 x_52))) (or (or (or ?v_34 x_21) x_15) (<= x_58 x_53))) (or (or x_17 x_11) (<= x_58 x_55))) (or (or (or (and (and (and (and (not x_19) ?v_28) (< x_5 x_52)) ?v_57) ?v_58) (and (and (and (and (not x_21) ?v_30) (< x_5 x_53)) ?v_59) ?v_60)) (and (and (and (not x_17) ?v_19) ?v_61) ?v_62)) ?v_40)) (= x_65 (or x_19 (= x_52 x_58)))) (= x_66 (or x_21 (= x_53 x_58)))) (= x_64 (or x_17 (= x_55 x_58)))) ?v_65) ?v_66) (and (and (and (and (and (and (and ?v_63 (not ?v_64)) x_59) ?v_65) ?v_66) (= x_58 x_5)) ?v_54) ?v_55)) ?v_67) ?v_68) ?v_26) ?v_53) ?v_51) ?v_52) ?v_69))) (or (or (and ?v_70 (= x_60 (ite (not x_30) x_9 1))) (and ?v_71 (= x_60 (ite ?v_94 x_9 2)))) (and (and (not ?v_70) (not ?v_71)) (= x_60 x_9)))) (or (and (and ?v_72 (not (<= x_76 x_83))) (not (<= x_83 ?v_73))) (and ?v_74 (= x_83 x_52)))) (or (and (and ?v_72 (not (<= x_76 x_84))) (not (<= x_84 ?v_73))) (and ?v_74 (= x_84 x_53)))) (or (and (and ?v_72 (= x_76 (+ x_6 x_54))) x_85) (and (and ?v_74 (not x_85)) (= x_76 x_6)))) (or (and (and (and (and ?v_43 (not (<= x_86 x_58))) (not (<= x_87 x_58))) (< x_86 x_87)) (< x_87 x_88)) (and (and (and (not ?v_43) (= x_86 x_55)) (= x_87 x_56)) (= x_88 x_57)))) (or (or (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and ?v_70 ?v_78) ?v_103) ?v_79) ?v_80) (= x_23 (ite ?v_81 (ite (not (< x_49 3)) 3 x_49) x_24))) (= x_13 ?v_82)) (= x_15 ?v_84)) (= x_11 ?v_86)) ?v_115) ?v_88) (and (and (and (and (and (and (and (and (and (and ?v_70 (not ?v_78)) x_30) (= x_5 x_10)) ?v_79) ?v_80) (= x_23 (ite ?v_81 (ite (not (< x_50 3)) 3 x_50) x_24))) (= x_13 (or ?v_82 ?v_83))) (= x_15 (or ?v_84 ?v_85))) (= x_11 (or ?v_86 ?v_87))) ?v_88)) ?v_113) ?v_114) ?v_131) ?v_116) ?v_117) ?v_118) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_71 (or (or (and (and (and ?v_89 ?v_90) ?v_100) ?v_96) (and (and (and ?v_91 ?v_92) ?v_101) ?v_98)) (and (and ?v_81 ?v_102) ?v_99))) ?v_94) (or (or (or (or ?v_95 ?v_107) x_35) x_14) (not (< x_5 x_43)))) (or (or (or (or ?v_97 ?v_108) x_37) x_16) (not (< x_5 x_44)))) (or (or (or ?v_109 x_33) x_12) (not (< x_5 x_40)))) (or (or (or (and (and (and (and ?v_100 ?v_90) ?v_96) ?v_119) ?v_120) (and (and (and (and ?v_101 ?v_92) ?v_98) ?v_121) ?v_122)) (and (and (and (and ?v_102 ?v_81) ?v_99) ?v_123) ?v_124)) (and (< x_2 ?v_110) ?v_103))) (= x_34 (or x_35 ?v_104))) (= x_36 (or x_37 ?v_105))) (= x_32 (or x_33 ?v_106))) ?v_111) ?v_112) (and (and (and (and (and (and (and (and (and ?v_71 (or (or (or ?v_95 x_35) x_14) ?v_107)) (or (or (or ?v_97 x_37) x_16) ?v_108)) (or (or x_33 x_12) ?v_109)) x_38) (= x_5 ?v_110)) ?v_111) ?v_112) ?v_113) ?v_114)) ?v_129) ?v_130) ?v_88) ?v_115) ?v_116) ?v_117) ?v_118)) (and (and (and (and (and (and (and (or (and (and (and (and (and (and (and (and (and (and (and ?v_125 ?v_126) (not x_7)) (or (or (or ?v_95 x_20) x_14) (<= x_5 x_43))) (or (or (or ?v_97 x_22) x_16) (<= x_5 x_44))) (or (or x_18 x_12) (<= x_5 x_40))) (or (or (or (and (and (and (and (not x_20) ?v_90) (< x_1 x_43)) ?v_119) ?v_120) (and (and (and (and (not x_22) ?v_92) (< x_1 x_44)) ?v_121) ?v_122)) (and (and (and (not x_18) ?v_81) ?v_123) ?v_124)) ?v_103)) (= x_19 (or x_20 (= x_43 x_5)))) (= x_21 (or x_22 (= x_44 x_5)))) (= x_17 (or x_18 (= x_40 x_5)))) ?v_127) ?v_128) (and (and (and (and (and (and (and ?v_125 (not ?v_126)) x_7) ?v_127) ?v_128) (= x_5 x_1)) ?v_116) ?v_117)) ?v_129) ?v_130) ?v_88) ?v_115) ?v_113) ?v_114) ?v_131))) (or (or (and ?v_132 (= x_9 (ite (not x_31) x_51 1))) (and ?v_133 (= x_9 (ite (not x_39) x_51 2)))) (and (and (not ?v_132) (not ?v_133)) (= x_9 x_51)))) (or (and (and ?v_135 (not (<= x_6 x_52))) (not (<= x_52 ?v_134))) (and ?v_136 (= x_52 x_43)))) (or (and (and ?v_135 (not (<= x_6 x_53))) (not (<= x_53 ?v_134))) (and ?v_136 (= x_53 x_44)))) (or (and (and ?v_135 (= x_6 (+ x_2 x_54))) x_4) (and (and ?v_136 ?v_137) (= x_6 x_2)))) (or (and (and (and (and ?v_106 ?v_138) ?v_139) (< x_55 x_56)) (< x_56 x_57)) (and (and (and (not ?v_106) (= x_55 x_40)) (= x_56 x_45)) (= x_57 x_48)))) x_85) (not (<= x_58 ?v_73)))))))))))))))))))
(minimize x_1 )
(check-sat) 
(get-objectives)
(exit)
