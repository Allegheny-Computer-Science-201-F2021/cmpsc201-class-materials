(defun guessMe (n)(cond
  ((<= n 1) 1)
  (t (+ (guessMe (- n 1)) (guessMe (- n 2))))
  )
)
(print (guessMe 10))

