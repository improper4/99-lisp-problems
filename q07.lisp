; (**) Flatten a nested list structure.
; Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
;
; Example:
; * (my-flatten '(a (b (c d) e)))
; (A B C D E)
;
; Hint: Use the predefined functions list and append.

(defun my-flatten (lst)
	(if (null lst)
		nil
		(if (atom lst)
			(list lst)
			(append (my-flatten (car lst)) (my-flatten (cdr lst))))))