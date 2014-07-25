#lang scribble/base

@(require scribble/core
          scriblib/figure
          scribble/decode
          scribble/html-properties
          scribble/latex-properties
 	  "tables.rkt"	
	  "bib.rkt"
          "helpers.rkt")

@title[#:tag "s:case-studies"]{Appendix --- Case Studies}

@(define study-counter! 0)
@(define (next-study label)
  (set! study-counter! (add1 study-counter!))
  (elemtag label (number->string study-counter!)))

[Have pulled in one detailed case study for now -- rest will be added
once we decide which parts to retain for the report]

@section{Case Study @next-study["krishnamurthi-asgn-1"]: Who is the Most Liberal/Conservative Senator?}

@md-section["../in-flow-assignments/krishnamurthi/asgn-1.md"]


@section{Case Study @next-study["clarke-asgn-1"]: Pinball Wizard!}

@md-section["../in-flow-assignments/clarke/asgn-1.md"]


@section{Case Study @next-study["politz-asgn-1"]: Functional Tree Updaters}

@md-section["../in-flow-assignments/politz/asgn-1.md"]


@section{Case Study @next-study["hauswirth-asgn-1"]: Iffy: In-Lecture Peer Review for Comprehending If Statements}

@md-section["../in-flow-assignments/hauswirth/asgn-1.md"]


@section{Case Study @next-study["wrigstad-asgn-1"]: Achievement 1}

@md-section["../in-flow-assignments/wrigstad/asgn-1.md"]


@section{Case Study @next-study["wrigstad-asgn-2"]: Program 1}

@md-section["../in-flow-assignments/wrigstad/asgn-2.md"]


@section{Case Study @next-study["tirronen-asgn-2"]: Boggle again}

@md-section["../in-flow-assignments/tirronen/asgn-2.md"]


@section{Case Study @next-study["clarke-asgn-2"]: Advanced Dungeons and Design (AD&D)}

@md-section["../in-flow-assignments/clarke/asgn-2.md"]


@section{Case Study @next-study["clear-asgn-1"]: Research Project}

@md-section["../in-flow-assignments/clear/asgn-1.md"]


@section{Case Study @next-study["fisler-asgn-1"]: Attacking Turnout}

@md-section["../in-flow-assignments/fisler/asgn-1.md"]


@section{Case Study @next-study["fisler-asgn-2"]: Changing the Environment}

@md-section["../in-flow-assignments/fisler/asgn-2.md"]


@section{Case Study @next-study["hauswirth-asgn-2"]: Pepr: Peer Project Review}

@md-section["../in-flow-assignments/hauswirth/asgn-2.md"]


@section{Case Study @next-study["krishnamurthi-asgn-2"]: A Hotel Elevator Controller}

@md-section["../in-flow-assignments/krishnamurthi/asgn-2.md"]


@section{Case Study @next-study["politz-asgn-2"]: Simple Type Checker}

@md-section["../in-flow-assignments/politz/asgn-2.md"]


@section{Case Study @next-study["tirronen-asgn-1"]: My woefully insecure web-app}

@md-section["../in-flow-assignments/tirronen/asgn-1.md"]



@;@section{Case Study @next-study["clear-asgn-2"]: Programming 1 - Marked Exercise A}

@;@md-section["../in-flow-assignments/clear/asgn-2.md"]


