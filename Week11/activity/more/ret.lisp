;; some sample lisp commands
(defun f (x y) (setq count1 (+ x y))(setq count2 (- y x))(return-from f count1))
(print (f 20 30))
