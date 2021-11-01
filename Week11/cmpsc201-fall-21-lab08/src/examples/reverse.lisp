(defun rs (list) (cond
((null list) nil)
 (t (append (rs(cdr list)) 
	   (list (car list)))))
)
(print (rs '(1 2 3 4)))

