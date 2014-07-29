#lang racket/base

(require scriblib/autobib scriblib/bibtex racket/list)

(provide generate-bib ~cite)

(define deci
  (make-bib
    #:title
      "Motivation and Education: The Self-Determination Perspective"
    #:author
      (authors (author-name "Edward L." "Deci")
               (author-name "Robert J." "Vallerand")
               (author-name "Luc G." "Pelletier")
               (author-name "Richer M." "Ryan"))
    #:date "1991"
    #:location
      (journal-location "Educational Psychologist"
                        #:pages (list 325 346)
                        #:volume 26
                        #:number "3 & 4")))

(define expertiza
  (make-bib
    #:title "Reusable learning objects through peer review: The Expertiza approach"
    #:author 
      (authors (author-name "Lakshmi" "Ramachandran")
               (author-name "Edward F." "Gehringer"))
    #:date "2007"
    #:location
      (proceedings-location "Innovate: Journal of Online Education")))

(define auto-meta-review
  (make-bib
    #:title "Automated Assessment of Review Quality Using Latent Semantic Analysis"
    #:author
      (authors (author-name "Lakshmi" "Ramachandran")
               (author-name "Edward F." "Gehringer"))
    #:date "2011"
    #:location
      (proceedings-location "IEEE International Conference on Advanced Learning Technologies")))

(define special-keys
  (hash "deci-self-determination" deci
        "gehringer-expertiza-approach" expertiza
        "rg:auto-assess-rev-lsa" auto-meta-review))
          
(define-cite autobib-cite _ generate-bib #:style number-style)
(define-bibtex-cite* "inflow.bib" autobib-cite _ ~cite-id citet-id)

(define (~cite . keys)
  (if (> (length keys) 1)
    (apply ~cite-id keys)
    (cond
      [(hash-has-key? special-keys (first keys))
       (autobib-cite (hash-ref special-keys (first keys)))]
      [else (~cite-id (first keys))])))

