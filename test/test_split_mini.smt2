;=========================
;  Minimal split example
;=========================
(set-logic ALL)

;---------- 1. 变量 ----------
(declare-const s1 String)
(declare-const s2 String)

; 把定界符 '-' 定义为一个 0 参数常量，写法与普通 define-fun 相同
(define-fun dash () String "-")

;---------- 2. 自定义函数接口 ----------
(declare-fun numSplits (String String) Int)
(declare-fun splitAt   (String String Int) String)

;---------- 3. 基本约束 ----------
; 约定：s1、s2 都恰好被分成 2 段
(assert (= (numSplits s1 dash) 2))
(assert (= (numSplits s2 dash) 2))

; (可选) 禁止段内再出现 '-'，方便后续调试
(assert (= (str.indexof (splitAt s1 dash 0) dash 0) -1))
(assert (= (str.indexof (splitAt s1 dash 1) dash 0) -1))
(assert (= (str.indexof (splitAt s2 dash 0) dash 0) -1))
(assert (= (str.indexof (splitAt s2 dash 1) dash 0) -1))

;---------- 4. 目标性质 ----------
; ∀x∈split(s1), ∀y∈split(s2) → |x| > |y|
; 由于段数≤2，直接枚举 4 组不等式即可
(assert (> (str.len (splitAt s1 dash 0)) (str.len (splitAt s2 dash 0))))
(assert (> (str.len (splitAt s1 dash 0)) (str.len (splitAt s2 dash 1))))
(assert (> (str.len (splitAt s1 dash 1)) (str.len (splitAt s2 dash 0))))
(assert (> (str.len (splitAt s1 dash 1)) (str.len (splitAt s2 dash 1))))

;---------- 5. 求解 ----------
(check-sat)
(get-model)
