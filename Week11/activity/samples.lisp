;; some sample lisp commands
(defun f (x y) (+ x y))
(print (f 20 30))
(print (first '(1 2 3 4 5)))
(print (rest '(1 2 3 4 5)))
(print (car '(1 2 3 4 5)))
(print (cdr '(1 2 3 4 5)))
(print (reduce '+ '(1 2 3 4)))
(loop for x in '(1 2 3) do (print x))
(loop for x in '(1 2 3) do (format t "~d " x))
(print (length '(1 2 3 4 5)))

