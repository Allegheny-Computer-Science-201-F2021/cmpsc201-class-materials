#lang racket
; compute length of the string
(define (len x)
        (string-length x)
)
; compute mid point of the string 
(define (mid x)
	(round(/ (string-length x) 2))
)
(define alpha "Hello")
(mid alpha)
