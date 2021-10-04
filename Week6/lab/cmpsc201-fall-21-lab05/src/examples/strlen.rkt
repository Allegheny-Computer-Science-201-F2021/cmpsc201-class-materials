#lang racket
; compute length of the string
(define (len x)
        (string-length x)
)
; compute mid point of the string 
(define (mid x)
	(round(/ (len x) 2))
)
(define alpha "Programming")
(define beta "Programming Language")
(len alpha)
(mid beta)
