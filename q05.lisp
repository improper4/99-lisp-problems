
; Reverse a list

(defun my-reverse-list (lst)
	(let ((acc nil))
		(dolist (elt lst)
			(push elt acc))
		acc))

