#lang racket/base

(require scriblib/autobib scriblib/bibtex racket/list)

(provide (all-defined-out))

(define hpld:2014:aehed
  (make-bib
    #:title "A comparison of peer and tutor feedback"
    #:author
      (authors
        (author-name "John" "Hamer")
        (author-name "Helen" "Purchase")
        (author-name "Andrew" "Luxton-Reilly")
        (author-name "Paul" "Denny"))
    #:location
      (proceedings-location "Assessment & Evaluation in Higher Education")
    #:date 2014
))
          
(define hmk:2005:australia-ed
  (make-bib
    #:title "A method of automatic grade calibration in peer assessment"
    #:author 
      (authors
        (author-name "John" "Hamer")
        (author-name "Kenneth T. K." "Ma")
        (author-name "Hugh H. F." "Kwong"))
    #:location
      (proceedings-location "Australasian Conference on Computing Education")
    #:date 2005
))

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
 
(define renkl-1
  (make-bib 
    #:title "Learning from Examples: Instructional Principles from the Worked Examples Research"
    #:author
      (authors (author-name "Robert K." "Atkinson")
               (author-name "Sharon J." "Derry")
               (author-name "Alexander" "Renkl")
               (author-name "Donald" "Wortham"))
    #:date "2000"
    #:location
      (journal-location "Review of Educational Research"
                        #:pages (list 181 214)
                        #:volume 70
                        #:number "2")))
(define renkl-2
  (make-bib 
    #:title "Learning from Worked-Out Examples: A Study on Individual Differences"
    #:author
      (authors (author-name "Alexander" "Renkl"))
    #:date "1997"
    #:location
      (journal-location "Cognitive Science"
                        #:pages (list 1 19)
                        #:volume 21)))

(define miller
  (make-bib
    #:title "A Mentor Program in CS1"
    #:author
      (authors (author-name "Amanda" "Miller")
               (author-name "Judy" "Kay"))
    #:date "2002"
    #:location
      (proceedings-location  "ACM SIGCSE Conference on Innovation and Technology in Computer Science Education")))

(define punished-by-rewards
  (make-bib
    #:title "Punished By Rewards"
    #:author "Alfie Kohn"
    #:date "1999"
    #:location
      (book-location #:publisher "Houghton Mifflin Company")))

(define geert
  (make-bib
    #:title "Cultures and Organizations: Software of the Mind"
    #:author
      (authors
        (author-name "Geert" "Hofstedet")
        (author-name "Gert Jan" "Hofstede"))
    #:date "2005"
    #:location
      (book-location #:publisher "McGraw-Hill")))

(define psych-programming
  (make-bib
    #:author "Gerald M. Weinberg"
    #:title "The Psychology of Computer Programming"
    #:date "1971"
    #:location
      (book-location #:publisher "Van Nostrand Reinhold")))
  
(define bloom
  (make-bib
    #:title "Taxonomy of Educational Objectives: The Classification of Educational Goals. Handbook I: Cognitive Domain"
    #:author
      (authors (author-name "B. S." "Bloom")
               (author-name "D. R." "Krathwohl"))
    #:date "1956"
    #:location
      (book-location #:publisher "Longmans")))

(define mazur
  (make-bib
    #:title "Peer Instruction: A User's Manual"
    #:author
      (authors (author-name "Eric" "Mazur"))
    #:date "1996"
    #:location
      (book-location #:publisher "Addison-Wesley")))

(define smartbear
  (make-bib
    #:title "Best Kept Secrets of Peer Code Review"
    #:author
      (authors (author-name "Jason" "Cohen")
               (author-name "Steven" "Teleki")
               (author-name "Eric" "Brown"))
    #:date "2013"
    #:location
      (book-location #:publisher "SmartBear Software")))


(define special-keys
  (hash "deci-self-determination" deci
        "gehringer-expertiza-approach" expertiza
        "rg:auto-assess-rev-lsa" auto-meta-review
        "adrw:2000:worked-examples" renkl-1 
        "r:1997:self-explanations" renkl-2 
        "mk:2002:peer-mentor" miller
        "w:psychology-computer-programming" psych-programming
        "ghgjh:cult-org" geert
        "punished-by-rewards" punished-by-rewards
        "smartbear-code-review" smartbear
        "mazur-peer-isntr-book" mazur
        "bloom-taxonomy" bloom
        "hmk:2005:australia-ed" hmk:2005:australia-ed
        "hpld:2014:aehed" hpld:2014:aehed
        ))
          
(define-cite autobib-cite _ generate-bib #:style number-style)
(define-bibtex-cite* "inflow.bib" autobib-cite _ ~cite-id citet-id)

(define (~cite . keys)
  (if (> (length keys) 1)
    (apply ~cite-id keys)
    (cond
      [(hash-has-key? special-keys (first keys))
       (autobib-cite (hash-ref special-keys (first keys)))]
      [else (~cite-id (first keys))])))

