#lang racket/base

(require scriblib/autobib scriblib/bibtex)

(provide generate-bib ~cite)

(define-bibtex-cite "inflow.bib" ~cite what-is-this-id-for? generate-bib #:style number-style)

(define db (bibtex-parse (open-input-file "inflow.bib")))

;(define (_~cite key)
;  (~cite (hash-ref (bibdb-bibs db) key (? () (error 'cite (format "No bib entry: ~a\n" key))))))