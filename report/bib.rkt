#lang racket/base

(require scriblib/autobib scriblib/bibtex racket/list)

(provide (all-defined-out))

(define toce "Transactions on Computing Education")

(define iticse "Innovation and Technology in Computer Science Education")
(define sigcse "Special Interest Group on Computer Science Education")
(define icer "International Computing Education Research")
(define fse "Foundations of Software Engineering")
(define cscl "Computer Support for Collaborative Learning")

(define (define-citation name bib)
  (hash-set! special-keys name bib))

(define hcjlmprsss:2008:wg
  (make-bib
    #:author
      (authors
        (author-name "John" "Hamer")
        (author-name "Quintin" "Cutts")
        (author-name "Jana" "Jackova")
        (author-name "Andrew" "Luxton-Reilly")
        (author-name "Robert" "McCartney")
        (author-name "Helen" "Purchase")
        (author-name "Charles" "Riedesel")
        (author-name "Mara" "Saeli")
        (author-name "Kate" "Sanders")
        (author-name "Judite" "Sheard"))
    #:title
      "Contributing Student Pedagogy"
    #:location
      (journal-location "SIGCSE Bulletin" #:pages (list 194 212) #:volume 40 #:number 4)
    #:date 2008
))

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

(define dl:ijse:2000
  (make-bib
    #:author
      (authors
        (author-name "Elizabeth A." "Davis")
        (author-name "Maria C." "Linn"))
    #:title "Scaffolding students’ knowledge integration: prompts for reflection in KI"
    #:date 2000
    #:location
      (journal-location
        "International Journal of Science Education"
        #:volume 22
        #:number 8)))


(define lgp:toce:2013
  (make-bib
    #:author
      (authors
        (author-name "Cynthia Baily" "Lee")
        (author-name "Saturnino" "Garcia")
        (author-name "Leo" "Porter"))
    #:title "Can Peer Instruction Be Effective in Upper-division Computer Science Courses?"
    #:date 2013
    #:location
      (journal-location
        toce
        #:pages (list 1 22)
        #:volume 13
        #:number 3)))

;hundhausen-pcr-toce13,
(define haa:toce:2013
  (make-bib
    #:title
      "Talking About Code: Integrating Pedagogical Code Reviews into Early Computing Courses"
    #:author
      (authors
        (author-name "Christopher D." "Hundhausen")
        (author-name "Anukrati" "Agrawal")
        (author-name "Pawan" "Agarwal"))
    #:location
      (journal-location
        toce
        #:volume 13
        #:number 3)
    #:date 2013))

;fagan-code-inspection
(define f:ibmsys:1976
  (make-bib
    #:author (author-name "M. E." "Fagan")
    #:title "Design and code inspections to reduce errors in program development"
    #:location
      (journal-location "IBM Systems Journal"
        #:pages (list 182 211))
    #:date 1976))


(define v:fse:1993
  (make-bib
    #:author (author-name "Lawrence G." "Votta Jr.")
    #:title "Does every inspection need a meeting?"
    #:location (proceedings-location fse)
    #:date 1993
))

;sims1989student
(define s:jae:1989
  (make-bib
    #:title "Student peer review in the classroom: a teaching and grading tool"
    #:author (author-name "Gerald K." "Sims")
    #:location
      (journal-location
        "Journal of Agronomic Education"
        #:volume 18
        #:number 2
        #:pages (list 105 108))
    #:date 1989))


(define special-keys
  (make-hash (list
        (cons "deci-self-determination" deci)
        (cons "gehringer-expertiza-approach" expertiza)
        (cons "rg:auto-assess-rev-lsa" auto-meta-review)
        (cons "adrw:2000:worked-examples" renkl-1 )
        (cons "r:1997:self-explanations" renkl-2 )
        (cons "mk:2002:peer-mentor" miller)
        (cons "w:psychology-computer-programming" psych-programming)
        (cons "ghgjh:cult-org" geert)
        (cons "punished-by-rewards" punished-by-rewards)
        (cons "smartbear-code-review" smartbear)
        (cons "mazur-peer-isntr-book" mazur)
        (cons "bloom-taxonomy" bloom)
        (cons "hmk:2005:australia-ed" hmk:2005:australia-ed)
        (cons "hpld:2014:aehed" hpld:2014:aehed)
        (cons "hcjlmprsss:2008:wg" hcjlmprsss:2008:wg)
        (cons "dl:ijse:2000" dl:ijse:2000)
        (cons "lgp:toce:2013" lgp:toce:2013)
        (cons "haa:toce:2013" haa:toce:2013)
        (cons "f:ibmsys:1976" f:ibmsys:1976)
        (cons "v:fse:1993" v:fse:1993)
        (cons "s:jae:1989" s:jae:1989)
        )))
          
(define-citation "ppkf:iticse:2014"
  (make-bib
    #:title "CaptainTeach: Multi-Stage, In-Flow Peer Review for Programming Assignments"
    #:author
      (authors
        (author-name "Joe Gibbs" "Politz")
        (author-name "Daniel" "Patterson")
        (author-name "Shriram" "Krishnamurthi")
        (author-name "Kathi" "Fisler"))
    #:date "2014"
    #:location
      (proceedings-location iticse)))

(define-citation "pkf:icer:2014"
  (make-bib
    #:title "In-flow Peer Review of Tests in Test-First Programming"
    #:author
      (authors
        (author-name "Joe Gibbs" "Politz")
        (author-name "Shriram" "Krishnamurthi")
        (author-name "Kathi" "Fisler"))
    #:date "2014"
    #:location
      (proceedings-location iticse)))

;crouch-mazur-peer-instr-10-years,
(define-citation "cm:ajp:2001"
  (make-bib
    #:author
      (authors
        (author-name "Catherine H." "Crouch")
        (author-name "Eric" "Mazur"))
    #:title "Peer instruction: Ten years of experience and results"
    #:location
      (journal-location "American Journal of Physics"
        #:volume 69
        #:number 9
        #:pages (list 970 977))
    #:date 2001))


;barker-fine-arts-approach-cs05,
(define-citation "bgr:sigcse:2005"
  (make-bib
    #:author
      (authors
        (author-name "Lecia J." "Barker")
        (author-name "Kathy" "Garvin-Doxas")
        (author-name "Eric" "Roberts"))
    #:title "What Can Computer Science Learn from a Fine Arts Approach to Teaching?"
    #:location
      (proceedings-location sigcse
        #:pages (list 421 425))
    #:date 2005
  ))

;chung2004promoting
(define-citation "cc:ieti:2004"
  (make-bib
    #:author
      (authors
        (author-name "Jenny C. C." "Chung")
        (author-name "Susanna M. K." "Chow"))
    #:title "Promoting student learning through a student-centred problem-based learning subject curriculum"
    #:location
      (journal-location
        "Innovations in Education and Teaching International"
        #:volume 41
        #:number 2
        #:pages (list 157 168))
    #:date 2004))

;rick2006situating
(define-citation "rg:ijcscl:2006"
  (make-bib
    #:title "Situating CoWeb: A scholarship of application"
    #:author
      (authors
        (author-name "Jochen" "Rick")
        (author-name "Mark" "Guzdial"))
    #:location
      (journal-location
        "International Journal of Computer-Supported Collaborative Learning"
        #:volume 1
        #:number 1
        #:pages (list 89 115))
    #:date 2006))

;nelson-feedback-rubric
(define-citation "ns:is:2009"
  (make-bib
    #:author
      (authors
        (author-name "M. M." "Nelson")
        (author-name "C. D." "Schunn"))
    #:title "The nature of feedback: How different types of peer feedback affect writing performance" 
    #:location
      (journal-location "Instructional Science"
        #:volume 27
        #:number 4
        #:pages (list 375 401))
    #:date 2009))

;Papadopoulos:2012:IPR:2215076.2215100
(define-citation "pld:ce:2012"
  (make-bib
    #:author
      (authors
        (author-name "Pantelis M." "Papadopoulos")
        (author-name "Thomas D." "Lagkas")
        (author-name "Stavros N." "Demetriadis"))
    #:title "How to Improve the Peer Review Method: Free-selection vs Assigned-pair Protocol Evaluated in a Computer Networking Course"
    #:location
      (journal-location "Computing & Education"
        #:volume 59
        #:number 2
        #:pages (list 182 195))
    #:date 2012))

;trautmann2009designing,
(define-citation "t:jcst:2009"
  (make-bib
    #:author (author-name "Nancy M." "Trautmann")
    #:title "Designing Peer Review for Pedagogical Success: What Can We Learn from Professional Science?"
    #:location
      (journal-location "Journal of College Science Teaching"
        #:volume 38
        #:number 4
        #:pages (list 14 19))
    #:date 2009))

;frederiksen-reflective-collaboration
(define-citation "fw:cscl:1997"
  (make-bib
    #:author
      (authors
        (author-name "John R." "Frederiksen")
        (author-name "Barbara Y." "White"))
    #:title "Cognitive Facilitation: A Method for Promoting Reflective Collaboration"
    #:location (proceedings-location cscl)
    #:date 1997))

;white-reflective-affordances,
(define-citation "wffelc:icls:2002"
  (make-bib
    #:author
      (authors
        (author-name "Barbara Y." "White")
        (author-name "John R." "Frederiksen")
        (author-name "T." "Frederiksen")
        (author-name "E." "Eslinger")
        (author-name "A." "Collins"))
    #:title "Inquiry Island: Affordances of a Multi-Agent Environment for Scientific Inquiry and Reflective Learning"
    #:location
      (proceedings-location "International Conference of the Learning Sciences (ICLS)")
    #:date 2002))


;van1999development,
(define-citation "vbg:jce:1999"
  (make-bib
    #:author
      (authors
        (author-name "Susan" "van Rooyen")
        (author-name "Nick" "Black")
        (author-name "Fiona" "Godlee"))
    #:title "Development of the review quality instrument (RQI) for assessing peer reviews of manuscripts"
    #:location
      (journal-location "Journal of Clinical Epidemiology"
        #:volume 52
        #:number 7
        #:pages (list 625 629))
    #:date 1999))

;palinscar-peer-teaching,
(define-citation "pb:ci:1984"
  (make-bib
    #:author
      (authors
        (author-name "Annemarie Sullivan" "Palinscar")
        (author-name "Ann L." "Brown"))
    #:title "Reciprocal Teaching of Comprehension-Fostering and Comprehension-Monitoring Activities"
    #:location (journal-location "Cognition and Instruction"
      #:pages (list 117 175))
    #:date 1984))


(define-cite autobib-cite _ generate-bib #:style number-style)
(define-bibtex-cite* "inflow.bib" autobib-cite _ ~cite-id citet-id)

(define (~cite . keys)
  (if (> (length keys) 1)
    (apply ~cite-id keys)
    (cond
      [(hash-has-key? special-keys (first keys))
       (autobib-cite (hash-ref special-keys (first keys)))]
      [else (~cite-id (first keys))])))

