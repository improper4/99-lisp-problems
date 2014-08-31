;	(**) Replicate the elements of a list a given number of times.
;	Example:
;	* (repli '(a b c) 3)
;	(A A A B B B C C C)

(defun repli (lst times)
	(mapcan (lambda (item) (make-list times :initial-element item)) lst))