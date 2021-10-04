#lang racket
; stringify here
(define (mid x)
	(round(/ (string-length x) 2))
)
(define s "Hello, Racket")
(string-append (substring s 0 (mid s)) (string-append " Dr." (substring s (mid s) )))