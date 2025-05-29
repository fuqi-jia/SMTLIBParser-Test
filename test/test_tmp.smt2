(set-logic QF_S)
(set-info :status sat)

(declare-const x String)
(declare-const y String)

(assert (= (str.split_at "apple,banana,cherry" "," 1) "banana"))
(assert (= (str.num_splits "one;two;three;four" ";") 4))
(assert (= (str.len (str.split_at "hello world" " " 0)) 5))
(assert (= x (str.split_at "foo:bar:baz" ":" 2)))

(check-sat)
(get-model)