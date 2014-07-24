#lang racket/base

(require racket/list scribble/manual markdown "./scrib.rkt")

(provide relworkfill
	 fill
   ref itemize enumerate
   bare-refs
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

(define (bare-refs . ss)
  (define elts (map elemref ss))
  (define l (length elts))
  (cond
    [(= l 0) (error "Zero refs given to bare-refs")]
    [(= l 1) elts]
    [(= l 2) (list (first elts) " and " (second elts))]
    [(> l 2)
     (append
       (flatten (list (map (lambda (e) (list e ", ")) (take elts (sub1 l)))))
       (list "and " (last elts)))]))
