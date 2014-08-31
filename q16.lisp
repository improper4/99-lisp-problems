;	(**) Drop every N'th element from a list.
;	Example:
;	* (drop '(a b c d e f g h i k) 3)
;	(A B D E G H K)

(defun drop (list n)
  "returns result of dropping every nth element of list"
  (loop
     for elem in list
     for i from 1
       unless (= (mod i n) 0)
       collect elem))
