(defun mn (list) (cond
(( evenp (length list)) "even")
 (t "odd"))
)
(print (mn '(1 2 3 4)))
