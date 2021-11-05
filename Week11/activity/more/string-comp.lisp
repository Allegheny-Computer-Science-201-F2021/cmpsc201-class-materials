(defun mn (a b) (cond
((string-equal a b) "equal") ;;; if a = b then "equal" else return "not equal"
;;; string-equal checks for equality in strings 
 (t "not equal" )) ;;; t for else
)
(print (mn "DAD" "MOM"))