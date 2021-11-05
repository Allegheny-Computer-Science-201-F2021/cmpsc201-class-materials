(defun sumf (list) (setq count 0)(loop for x in list do (setq count (+ count x)))
(return-from sumf count))
(print (sumf '(1 2 3 4 5)))
(print (reduce '+ '(1 2 3 4)))