(defun half(ls)(setq c 1)(setq mid (ceiling (/ (length ls) 2 )))(setq op '())
	(loop for x in ls
			do (cond
				(( < c (+ mid 1))(setq c (+ c 1)))
	 			(t (setq op (append op (list x)))))
	)
	(setq c 0)
	
	(return-from half op)	
)
(print (half '(1 2 3 4 5 6)))




