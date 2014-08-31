; 	Run-length encoding of a list.
;	Use the result of problem P09 to implement the so-called run-length encoding data compression method. 
;	Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of 
;	the element E.
;
;   Example:
;		* (encode '(a a a a b c c a a d e e e e))
;		((4 A) (1 B) (2 C) (2 A) (1 D) (4 E))

(defun encode (lst)
	(labels ((encode-run (ele count lst)
		(cond
			((null lst) (list (list count ele)))
			((eql ele (car lst)) (encode-run ele (+ count 1) (cdr lst)))
			(t (cons (list count ele) (encode-run (car lst) 1 (cdr lst)))))))
	(if (null lst)
		nil
		(encode-run (car lst) 1 (cdr lst)))))