#lang racket/base

(require scribble/manual)

(provide relworkfill
	 fill
   ref itemize enumerate)

(define (relworkfill . contents)
  (bold (cons "RELWORK-TODO: " contents)))

(define (fill . contents)
  (bold (cons "FILL:" contents)))

(define (ref . contents)
  (bold (cons "REF:" contents)))

(define (enumerate . t)
  (apply itemlist #:style 'ordered t))

