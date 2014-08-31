; Find the last but one box of a list.
; Example:
; * (my-but-last '(a b c d))
; (C D)
(in-package :com.improper4.99-problems)

(defun my-but-last (list)
	(let ((relist (reverse list)))
	(cond
		((null relist) nil)
		((<= (length relist) 2) list)
		(t (list (second relist) (car relist))))))

