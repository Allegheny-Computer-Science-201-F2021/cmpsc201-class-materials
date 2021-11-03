(defun mn (a b) (cond
((string-equal a b) "equal") ;;; if a = b then "equal" else return "not equal"
 (t "not equal" ))
)
(print (mn "DAD" "DAD"))