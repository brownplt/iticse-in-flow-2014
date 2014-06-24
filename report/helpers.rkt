#lang racket/base

(require scribble/manual markdown "./scrib.rkt")

(provide relworkfill
	 fill
   ref itemize enumerate
   md-section)

(define (md-section name)
  (xexprs->scribble-pres (with-input-from-file name read-markdown)))

(define (relworkfill . contents)
  (bold (cons "RELWORK-TODO: " contents)))

(define (fill . contents)
  (bold (cons "FILL:" contents)))

(define (ref . contents)
  (bold (cons "REF:" contents)))

(define (enumerate . t)
  (apply itemlist #:style 'ordered t))

