#lang racket/base

(require scriblib/autobib scriblib/bibtex)

(provide generate-bib ~cite)

(define-bibtex-cite "built-bib.bib" ~cite what-is-this-id-for? generate-bib #:style number-style)

