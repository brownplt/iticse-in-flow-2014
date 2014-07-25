#lang racket/base

(require racket/list scribble/manual markdown "./scrib.rkt")

(provide relworkfill
	 fill
   ref itemize enumerate
   next-study study-refs
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

(define study-map! (make-hash))
(define study-counter! 0)
(define (next-study label)
  (set! study-counter! (add1 study-counter!))
  (hash-set! study-map! label study-counter!)
  (elemtag label (number->string study-counter!)))

(define (study-refs . ss)
  (define sorted (sort ss (lambda (s1 s2) (< (hash-ref study-map! s1) (hash-ref study-map! s2)))))
  (define elts (map elemref sorted))
  (define l (length elts))
  (cond
    [(= l 0) (error "Zero refs given to bare-refs")]
    [(= l 1) elts]
    [(= l 2) (list (first elts) " and " (second elts))]
    [(> l 2)
     (append
       (flatten (list (map (lambda (e) (list e ", ")) (take elts (sub1 l)))))
       (list "and " (last elts)))]))
