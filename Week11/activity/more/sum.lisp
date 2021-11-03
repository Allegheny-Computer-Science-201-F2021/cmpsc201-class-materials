(defun nm (list) (setq count 0)(loop for x in list do (setq count (+ count x)))
(return-from nm count))
(print (nm '(1 2 3 4 5)))
