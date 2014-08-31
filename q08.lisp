; (**) Eliminate consecutive duplicates of list elements.
; If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
;
; Example:
; * (compress '(a a a a b c c a a d e e e e))
; (A B C A D E)

(defun compress (lst)
	(labels ((recur (x lst)
		(cond
			((null lst) nil)
			((eql x (car lst)) (recur x (cdr lst)))
			(t (cons (car lst) (recur (car lst) (cdr lst)))))))
	(recur nil lst)))
		