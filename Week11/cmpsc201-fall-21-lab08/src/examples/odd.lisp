(defun mn (list) (cond
(( oddp (length list)) "odd")
 (t "even"))
)
(print (mn '(1 2 3 4)))
