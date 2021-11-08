(defun f (list) (setq count 0)(loop for x in list do (setq count (+ count 1)))
(return-from f count)) ;;; count = 0 count = count + 1
(defun EvenorOdd (list) (cond
(( evenp (f list)) "even")
 (t "odd"))
)
(print (EvenorOdd '(1 2 3 4)))
