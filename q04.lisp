; Find the number of elements of a list.
(defun my-length (list)
	(if (null list)
		0
		(+ 1 (my-length (cdr list)))))