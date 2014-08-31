;	Decode a run-length encoded list.
;	Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.

(defun decode (lst)
	(mapcan (lambda (x)
		(if (atom x)
			x
			make-list (car x) :initial-element (second x)))
	lst))