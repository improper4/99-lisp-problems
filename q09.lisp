;	Pack consecutive duplicates of list elements into sublists.
;	If a list contains repeated elements they should be placed in separate sublists.
;
;	Example:
;	* (pack '(a a a a b c c a a d e e e e))
;	((A A A A) (B) (C C) (A A) (D) (E E E E))

(defun pack (lst)
	(labels ((group (x lst tmp) 
		(cond
			((null lst) (list (cons x tmp)))
			((eql x (car lst)) (group x (cdr lst) (cons x tmp)))
			(t (cons (cons x tmp) (group (car lst) (cdr lst) nil))))))
	(if (null lst)
		nil
		(group (car lst) (cdr lst) nil))))

