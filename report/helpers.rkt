#lang racket/base

(require scribble/manual)

(provide relworkfill
	 fill)

(define (relworkfill . contents)
  (bold (cons "RELWORK-TODO: " contents)))

(define (fill . contents)
  (bold (cons "FILL:" contents)))