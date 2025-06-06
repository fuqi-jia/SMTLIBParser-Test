(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
These benchmarks used in the paper:

  Dejan Jovanovic and Leonardo de Moura.  Solving Non-Linear Arithmetic.
  In IJCAR 2012, published as LNCS volume 7364, pp. 339--354.

The meti-tarski benchmarks are proof obligations extracted from the
Meti-Tarski project, see:

  B. Akbarpour and L. C. Paulson. MetiTarski: An automatic theorem prover
  for real-valued special functions. Journal of Automated Reasoning,
  44(3):175-205, 2010.

Submitted by Dejan Jovanovic for SMT-LIB.


|)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun skoX () Real)
(declare-fun E () Real)
(declare-fun a () Real)
(assert (and (not (= a 4)) (and (not (<= (* skoX (+ (- 1536) (* skoX (+ (- 256) (* skoX (* skoX (+ (* E (* E (* E (* E (/ 29997 2500))))) (* skoX (+ (* E (* E (* E (* E (/ (- 30003) 5000))))) (* skoX (* E (* E (* E (* E (/ 9999 10000))))))))))))))) 3072)) (and (not (<= E 0)) (not (<= skoX 0))))))
(minimize skoX )
(check-sat) 
(get-objectives)
(exit)
