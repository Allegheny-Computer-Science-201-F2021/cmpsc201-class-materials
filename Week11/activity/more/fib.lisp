(defun guessMe (n)(cond
  ((<= n 1) n)
  (t (+ (guessMe (- n 1)) (guessMe (- n 2))))
  )
)
(print (guessMe 5))

