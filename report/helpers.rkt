#lang racket/base

(require scribble/manual)

(provide relworkfill
	 fill
   ref)

(define (relworkfill . contents)
  (bold (cons "RELWORK-TODO: " contents)))

(define (fill . contents)
  (bold (cons "FILL:" contents)))

(define (ref . contents)
  (bold (cons "REF:" contents)))
