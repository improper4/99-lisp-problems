;	Duplicate the elements of a list.
;	Example:
;	* (dupli '(a b c c d))
;	(A A B B C C C C D D)

(defun dupli (lst)
	(mapcan (lambda (item) (list item item)) lst))