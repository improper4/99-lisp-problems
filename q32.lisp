;	(**) Determine the greatest common divisor of two positive integer numbers.
;	Use Euclid's algorithm.
;	Example:
;	* (gcd 36 63)
;	9

(defun my-gcd (p q)
	(cond
		((= p q) p)
		((< p q) (my-gcd q p))
		(t (my-gcd q (- p q)))))