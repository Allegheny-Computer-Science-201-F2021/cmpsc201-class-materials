;;; rs -> accept a string rather a list. 
;;; rs -> return a string with value "nam"
(defun mn (a b) (cond
((string-equal a b) "palindrome") ;;; if a = b then "equal" else return "not equal"
;;; string-equal checks for equality in strings 
 (t "not palindrome" )) ;;; t for else
)
;;;(print (rs '(M A N)))
(print (mn "MAN" (reverse "MAN"))) ;;; palindrome or not.