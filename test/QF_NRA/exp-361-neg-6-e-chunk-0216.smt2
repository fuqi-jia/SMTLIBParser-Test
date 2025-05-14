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
(assert (and (not (= a 6)) (and (not (<= (* skoX (+ (- 279936) (* skoX (+ (- 46656) (* skoX (* skoX (* skoX (* skoX (+ (* E (* E (* E (* E (* E (* E (/ 29997 2500))))))) (* skoX (+ (* E (* E (* E (* E (* E (* E (/ (- 30003) 5000))))))) (* skoX (* E (* E (* E (* E (* E (* E (/ 9999 10000))))))))))))))))))) 559872)) (and (<= E (/ 28245729 10391023)) (and (<= E (/ 49171 18089)) (and (<= E (/ 193 71)) (and (<= E (/ 21743271936 7992538801)) (and (<= (/ 1084483 398959) E) (and (<= (/ 2721 1001) E) (and (<= (/ 131639193503 48427561125) E) (and (<= 2 E) (and (not (<= E 0)) (not (<= skoX 0))))))))))))))
(minimize skoX )
(check-sat) 
(get-objectives)
(exit)
