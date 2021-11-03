(defun fac (n)(cond
  ((<= n 0) 1)
  (t (* n (fac (- n 1))))
  )
)
(print (fac 5))