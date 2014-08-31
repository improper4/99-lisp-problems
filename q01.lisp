; Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)
(in-package :com.improper4.99-problems)

(defun my-last (list)
	(if (null list)
		nil
		(if (null (cdr list))
			list
			(my-last (cdr list)))))

