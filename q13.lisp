;	Run-length encoding of a list (direct solution).
;	Implement the so-called run-length encoding data compression method directly. 
;	I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, 
;	but only count them. As in problem P11, simplify the result list by replacing
;	the singleton lists (1 X) by X.
;
;	Example:
;	* (encode-direct '(a a a a b c c a a d e e e e))
;	((4 A) B (2 C) (2 A) D (4 E))

(defun encode-direct (lst)
	(let ((res nil) (cnt 0) (last-item nil))
		(labels ((collect-item ()
				(push (if (= 1 cnt)
						last-item
						(list cnt last-item))
					res))

			(new-item (item)
				(setf cnt 1
					last-item item))

			(add-item ()
				(incf cnt))

			(result-form ()
				(when (plusp cnt) (collect-item))
				(nreverse res)))

		(dolist (item lst (result-form))
			(cond
				((zerop cnt) (new-item item))
				((eql last-item item) (add-item))
				(t (collect-item) (new-item item)))))))