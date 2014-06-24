#lang scribble/sigplan @noqcourier

@;;; TODOs ;;;;;;
@; Shriram: pull in case studies as subsections of appendix
@; Joe: fill in remaining related work
@; Kathi: pull in remaining gdoc content (that wasn't assigned out)
@; someone: fix quotes (replace " with `` and '')

@(require scribble/core
          scriblib/figure
          scribble/decode
          scribble/html-properties
          scribble/latex-properties
 	  "tables.rkt"	
	  "bib.rkt"
          "helpers.rkt")

@;;;; macros for document content
@(define IFPR "IFPR")

@;;;; table generation 

@;;;; DOCUMENT STARTS HERE ;;;;;;;;;;;;;;

@title{In-Flow Peer Review}

@(authorinfo "Dave Clarke" "Uppsala Universitet" "dave.clarke@it.uu.se")
@(authorinfo "Tony Clear" "Auckland University of Technology" "tony.clear@aut.ac.nz")
@(authorinfo "Kathi Fisler" "WPI" "kfisler@cs.wpi.edu")
@(authorinfo "Matthias Hauswirth" "Università della Svizzera Italiana" "Matthias.Hauswirth@usi.ch")
@(authorinfo "Shriram Krishnamurthi" "Brown University" "sk@cs.brown.edu")
@(authorinfo "Joe Gibbs Politz" "Brown University" "joe@cs.brown.edu")
@(authorinfo "Ville Tirronen" "University of Jyväskylä" "ville.e.t.tirronen@jyu.fi")
@(authorinfo "Tobias Wrigstad" "Uppsala Unviersitet" "tobias.wrigstad@it.uu.se")

@abstract{Peer-review is a valuable tool that helps both the reviewee,
who receives feedback about their work, and the reviewer, who sees
different potential solutions and improves their ability to critique
work. @emph{In-flow} peer-review (IFPR) is peer-review done while an
assignment is in progress. Peer-review done during this time is likely
to result in greater motivation for both reviewer and
reviewee. This working-group report summarizes @IFPR,
and discusses numerous dimensions of the process, each of which
alleviate some problems while raising associated concerns.}

@section{In-Flow Peer-Reviewing}

Peer-review has been employed for various reasons in Computer Science
courses@~cite["topping-peer-review98"]. It is a mechanism for having
students read each others' work, learn how to give feedback, and even
to help with assessment. Indeed, of the six major computational
thinking skills listed in the current draft of the AP Computer
Science Principles curriculum @~cite["ap-principles"], the fourth is:
@;https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxjc3ByaW5jaXBsZXNwaWxvdGlpfGd4OjJkYjcyODI3ZDQ1ZGVlMGE
@nested[#:style 'inset]{
P4: Analyzing problems and artifacts

The results and artifacts of computation and the computational
techniques and strategies that generate them can be understood both
intrinsically for what they are as well as for what they produce. They
can also be analyzed and evaluated by applying aesthetic,
mathematical, pragmatic, and other criteria. Students in this course
design and produce solutions, models, and artifacts, and they evaluate
and analyze their own computational work as well as the computational
work that others have produced.

Students are expected to:
@itemize[

@item{Evaluate a proposed solution to a problem;}

@item{Locate and correct errors;}

@item{Explain how an artifact functions; and}

@item{Justify appropriateness and correctness.}

]
}
Peer review clearly has a role to play in developing each of these
skills. Students are forced to read and evaluate proposed (partial)
solutions, try to at least locate (if not offer corrections to)
errors, offer their explanations for what an artifact is doing
(especially if it does not match the expectations set by the problem),
and justify their views on the appropriateness and correctness of
presented solutions.  Giving authors the ability to respond to reviews
further reinforces the quoted principles.

This working group explored a particular variant of peer-review called
@italic{in-flow peer review}@~cite["politz-ct-iticse14"].  In this
model, peer review occurs while an assignment is in progress, before
students submit their work for final grading. Performing peer-review
in-flow has several potential benefits:
@itemize[

@item{It helps students better understand the problem
specification. If the work they see others doing is inconsistent with
their understanding, one or the other (or both!) might be confused. It
is better to discover this while the assignment is in progress than
after it is over.}

@item{Students are motivated to read feedback they get since it can
affect the performance of their current assignment. In contrast,
feedback given when the assignment is over may get less attention if
students have moved on to other assignments.}

@item{Letting students see the work others are doing seems to enable
plagiarism. In fact, we view this as a feature. When a student sees
another's work, they do not know the quality of the work they see: it
could be better than their own work, but it could also be
worse. Therefore, structured appropriately, it forces on students is the need to exercise
@emph{judgment}.}

@item{It further emphasizes the @emph{comparative} examination of work
against a student's own.}

@item{It exposes students to a standard component of industrial
software development.}  

]

Several challenges arise with this model, including figuring out how
to decompose assignments for meaningful reviews, how to prevent
students from gaming the process to avoid doing their own work, how to
minimize the extra time this takes to complete homeworks, and how to
help students not be led astray by weak or inaccurate reviews.
Considering the potential learning objectives of @IFPR, rather than
viewing it merely as a way to scale grading (a use of peer-review in
MOOCs [CITE]), adds subtlety to all of these questions.  

This report summarizes activities of a working group around the
promises and pitfalls of in-flow peer-review in computer science
classes.  The group members represented several countries and taught
various courses at various levels (though the majority taught courses
related to programming, programming languages, or various aspects of
software development).  Prior to the group's in-person meeting, each
group member created two assignments for in-flow peer-review.  These
case studies, which appear in the appendix
(@secref["s:case-studies"]), formed the basis of many  
of our discussions.

@section{An @IFPR Roadmap}

IFPR is a mechanism open to many policies. These policies are a
function of a course's goals, student maturity, cultural context, and
more. Therefore, an instructor who chooses to use IFPR will have to
make several decisions that determine exactly what form of IFPR they
employ. This section briefly outlines some of these decision points,
with references to the rest of the document for more details:
@itemlist[

@item{The choice of artifacts. How should an assignment be broken down
into multiple stages? Even in a programming assignment, there are many
choices: tests before code; data structures before tests; design
documents and architectural specifications before code; multiple
iterations of code; and so on. [REF]}

@item{The distribution of reviewing. E.g.: Should reviewing be
distributed in order of submission? Randomly? Between students of
similar or opposite attainment levels? [REF]}

@item{The use of rubrics. On the one hand, rubrics for reviewing guide
the reviewer and may result in more concrete, actionable outcomes. On
the other hand, a rubric can result in less constructive engagement
and may result in important issues being missed. [REF]}

@item{The choice of review ``technology''. Should reviewing by
mediated by a computer application or should it be done face-to-face
(perhaps as a small group meeting around a table)? [REF]}

@item{The role of anonymity. When, if ever, should authors and
reviewers know about each others' identity? Using single- and
double-blind reviewing systems introduces trade-offs between
protecting students' identity, creating the potential for abuse, and
introducing them to norms of professional behavior, all of which need
to be taken into account. [REF]}

@item{The role of experts. Experts can play any number of roles from
being entirely hands-off and treating this as an entirely student-run
process (presumably after introducing the process and its purpose) to
intervening only periodically to constantly monitoring and even
grading the responses. [REF]}

@item{Suitability for non-majors. While IFPR is easy to justify for
majors because of its correspondence to industrial practice
(code-reviews), does it make sense to use in a course for non-majors?
[REF]}

@item{The relationship to pair-programming. Pair-programming might
appear to also be a kind of IFPR---indeed, an extreme version of
it. However, the two processes are somewhat different and
complementary. [REF]}

@item{Workload considerations. IFPR clearly adds some effort to the
process of doing assignments, but may also reduce some effort, at
least relative to attaining a particular level of quality. [REF]}

]

@section{Terminology}

@(figure* "i:terminology"
          "Illustration of Key Terminology"
          (image #:scale 0.5 "images/terminology/Slide1.png"))

Throughout this report, we use the following terminology for the
various artifacts, roles, and aspects of @IFPR (@(figure-ref
"i:terminology") illustrates these graphically):

@itemlist[
@item{An @emph{exercise} is a problem set or assignment associated
with a course; it may consist of multiple independent subproblems.}

@item{A @emph{stage} is a problem or task within an exercise that will
be sent out for peer review.}

@item{A piece of work on which a student will be reviewed is called a
@emph{submission}: this could be a piece of code, a paper, a
presentation, or any other work on which peers will provide feedback.}

@item{The @emph{author} of a submission is the student who did the
work associated with the submission (and who presumably would receive
any grade associated with the submission, as well as any reviews about
the submission).}

@item{A @emph{review} is written by a @emph{reviewer} and responds to
a specific submission.}

@item{A @emph{meta-review} contains feedback on a review: this could
be a grade of a review produced by course staff, feedback from the
original submission author back to the reviewer, or any other
commentary on the contents of a review.  The provider of a meta-review
is called a @emph{respondant}.}

@item{A @emph{reviewing assignment} indicates which reviewers are
expected to produce reviews for each submission.}

]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Educational Goals of @IFPR}

@subsection{Student Learning Objectives}

In-flow peer review arises from a desire to help students learn
several important skills, while leveraging ongoing assignments to
motivate students to engage in reviewing.  The process of @IFPR asks
students (implicitly or explicitly) to perform several tasks,
including:

@itemlist[
@item{Assess whether another's work satisfies problem requirements}
@item{Provide actionable feedback to others}
@item{Extract high-level design choices from anothers' work}
@item{Compare others' high-level design choices and practices to their own}
@item{Decide whether to adopt or ignore particular feedback}
]

The first two tasks arise in all forms of peer-review; the rest are
more specific to in-flow review (or other models in which students get
to revise their work based on feedback).  The first two tasks affect
students' roles as reviewers, while the rest affect their roles as
reviewees.

The reviewing rubrics needed for these tasks can differ widely.
Rubrics for assessing whether work satisfies requirements, for
example, might give students a list of requirements to examine.
Rubrics for contrasting with another student's design choices need to
ask more abstract questions about the structure of a problem
solution. 

The specific nature of these tasks changes depending on the artifact
under evaluation.  For example, evaluating a program that implements a
particular algorithm requires different techniques than evaluating a
plan for executing a large software project. 

In the context of Bloom's taxonomy [CITE], these tasks move students
beyond "remember", "understand", and "apply" into "evaluate".  Put
differently, they engage students in reflection and meta-cognitive
thinking about their own work.  They also require students to
articulate opinions on technical work.

@IFPR has social benefits to individual students as well.  It should
provide means for students to gain confidence and self-efficacy in
their work, and in discussing the works of others.

In-flow peer-review is an example of a Contributing Student Pedagogy
(CSP), a pedagogy in which students (a) contribute to the learning of
others and (b) value the contributions of other students.  A 2008
ITiCSE working group report describes various facets of such
pedagogies@~cite["cspwg-08"].  @IFPR targets the second criterion
(valuing the contributions of other students) more than traditional,
post-submission peer review.  Various parameters in implementations of
@IFPR affect the extent to which students contribute to the learning
of others in practice: shallow reviews, for example, arguably meet the
letter but not the intent of a CSP.  Separately, @IFPR has goals
beyond CSP: writing reviews offers benefits to the reviewer as much as
the reviewee, and often the learning goals that inspire @IFPR (and
peer-review in general) are more focused on the reviewer than the
reviewee.  Nonetheless, many of the theoretical underpinnings of CSPs
also apply to @IFPR, and thus affect the ideas in this report.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@subsection{Instructor Goals}

Peer review in general has several pedagogic motivations beyond
student-oriented learning objectives.  These include:

@itemlist[
@item{Emphasizing the importance of writing in technical contexts}
@item{Increasing social interaction, thus making programming a more
social activity}
@item{Providing human feedback more scalably than with only expert
assessment}
@item{Fostering engagement of students from different cultures,
particularly non-western students who are new to western classrooms}
]

The in-flow context has additional pedagogic motivations:

@itemlist[
@item{Helping students improve their performance on an open assignment}
@item{Re-examining plagiarism issues by moving the problem}
]

In general, reading reviews
provides a window into students' meta-cognitive development around the
assignment content: a student can only comment on issues that she
understands to be important.  @IFPR provides an opportunity to ask
students to engage with course material from an additional angle,
which increases students' contact with a topic and forces more active
reflection.  Selecting artifacts worthy of this additional time can
help instructors identify more cognitively-challenging portions of
assignments.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Examples of @IFPR}

@(figure* "fig:case-studies"
          "Summary of Case Studies"
 @tabular[
  (add-width-wrappers
   (list "1in" "1in" "2in" "2in") 
   (list
     (list @list{@bold{Course and Level}} @list{@bold{Exercise}}
           @list{@bold{Submissions}} @list{@bold{Review Criteria}})
     (list @list{CS1}
	   @list{Write code and assertions for various components of a pinball game}
	   @list{Submit work so far on subset of functions designated by instructor}
	   @list{readability, correctness, free-form comments}
	   )
     (list @list{Advanced Sofware Design (upper undergrad/MS)}
	   @list{design and partly implement a mobile app+server for a
			game, using iterative development, and
			choosing a subset of asgmt goals to cover.}  
	   @list{submit design documents so far}
	   @list{free-form on comprehensibility, quality of
			   documentation, coverage of use cases,
			   adherence to design principles, choice of
			   subsystem to implement.  Concrete examples
			   required to illustrate each point. }
	   )
     (list @list{Collaborative Computing (MS)}
	   @list{Collaboratively produce a research article [*]}
	   @list{drafts of article}
	   @list{Conference paper reviewing rubric, with questions on
			    suitability for audience, originality and
			    demonstrated knowledge in contribution,
			    eveidence for arguments, methods,
			    presentation, etc. }
	   )
     (list @list{Software Security (upper undergrad/MS)}
	   @list{Find ways to attack a web-based application}
	   @list{Students peer-review each others' strategies to attack the
                 application in black box fashion.  After reviewing, students attack
		 the application in white box fashion}
	   @list{free-form comments on comprehensiveness of attack plans}
	   )
     (list @list{Software Modeling and Verification (upper undergrad/MS)}
	   @list{Use model checking to find flaws in a protocol.}
	   @list{submit proposed environment model and desired properties that should/should not hold under this model}
	   @list{assess whether model conforms to problem, whether
			model supports/masks the properties provided
			with the model.  Comment on good/bad features
			of this model. }
	   )
     (list @list{Programming Fundamentals 2 (2nd semester undergrad)}
	   @list{Classroom clicker assignment on if-statements [*]}
	   @list{Draw CFGs for code snippets}
	   @list{Boolean assessment of whether CFG is accurate}
	   )
     (list @list{Software Performance (MS)}
	   @list{Develop an extension to the jikes visual debugger [???]}
	   @list{proposal, prototypes, final artifact}
	   @list{comment on one thing they particularly like, and one
			 aspect that could be improved.  Prototype
			 evaluations follow in-class presentations by
			 each team.  Final artifact
			 review assesses usability, extensibility, and
			 documentation }
	   )
     (list @list{Computing for Social Sciences and Humanities (undergrad)}
	   @list{Cluster data on voting records (US Senate) to identify senators with similar ideology}
	   @list{submit code and tests for instructor-defined subsets of overall functionality}
	   @list{Provide scores from 0 to 100 on each of (a) whether
			 tests meaningfully capture the assignment
			 purpose, and (b) whether code performs the
			 corresponding computation correctly. }
	   )
     (list @list{Logic for System Modelling (upper undergrad/MS)}
	   @list{Write a relational (Alloy) model of an elevator [~]}
	   @list{model data components, describe desired properties of model, initial model of elevator operations}
	   @list{components/properties missing? components/properties
				       reasonable?  Is operational
				       model suitably operational or
				       too declarative?} 
	   )
     (list @list{Advanced CS1 with Data Structures}
	   @list{Design a data structure for incremental and
			functional updates on trees [*]}
	   @list{datatype definition with instances of the data, test cases, complete programs}
	   @list{can data structure support required operations within
		     time bounds, missing interesting examples of
		     data, coverage of tests, correctness of tests }
	   )
     (list @list{Programming Languages (upper undergrad/grad)}
	   @list{Provide a test suite and implementation for a type
			 checker [*]}
	   @list{tests, then implementation (no synchronized deadlines, but must occur in order)}
	   @list{Set of ~10 specific questions about test coverage, plus
		     free-form comments on style or organization of
		     test suite.  No peer review on implementations. }
	   )
     (list @list{Software Security (MS)}
	   @list{Implement simple on-line web-app on a strict
			   timetable, then create attack trees for it}
	   @list{initial program, attack trees, secured app, result of
			 using fuzzing tools, results of using static
			 analysis tools, review differences between
			 original and secured application }
	   @list{Free-form comparison to what was done in own solution}
	   )
     (list @list{Introduction to Functional Programming (upper undergrad/MS)}
	   @list{Boggle: find all valid words in 4x4 grid}
	   @list{decomposition of overall problem into tasks 
			       (with quickcheck assertions), tests} 
	   @list{check decomposition makes sense, presenting
		       alternative if own differs from reviewed one;
		       try own test suite on the code being reviewed }
	   )
     (list @list{Imperative and OO Programming Methodology (2nd year)}
	   @list{implement program that satisfies a student-selected set of learning goals}
	   @list{*choose goals, *choose program that satifies goals,
			 design program, implement program, design
			 presentation on how program achieves goals,
			 give presentation }
	   @list{template provided by instructors, question of whether this should be in-person or written}
	   )
     (list @list{Imperative and OO Programming Methodology (2nd year)}
	   @list{Implement simple Pong game in model-view-controller style}
	   @list{identify component, design data structure 
			  (classes and interfaces), design tests, two
			  draft implementations, final
			  implementationidentify component, design
			  data structure (classes and interfaces),
			  design tests, two draft implementations,
			  final implementation } 
	   @list{questions about whether key components are present;
			   whether tests are reasonably complete and
			   motivated; checking for good code
			   properties such as naming,structure,
			   identation, etc }
	   )
))
])

The case studies from working group members covered a variety of
student levels and course types.  More interestingly, they varied
widely in the kinds of artifacts and processes that they suggested for
@|IFPR|.  @(Figure-ref "fig:case-studies") summarizes the key
parameters of the case studies.  The table lists the name and level of
the course, describes the assignment in which @IFPR was used,
describes the submissions that were reviewed, and describes the review
criteria for submissions.  Courses with [*] after their descriptions
have been used in actual courses; the rest are hypothetical uses
proposed by working group members, based on exercises in their current
courses.

The full case-study descriptions appear in @secref["s:case-studies"]).
The source files are also available at
@(url "https://github.com/brownplt/iticse-in-flow-2014/tree/master/in-flow-assignments").

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Parameters and Issues}

The working group identified a series of parameters, issues, and
logistical questions that surround the idea of {@IFPR}.  

@subsection{What Artifacts Should be Reviewed?}

The group identified four broad choices in the artifacts to be
reviewed:

@itemlist[
@item{Multiple iterations of the same specific deliverable (like a paper)}
@item{Multiple iterations of an evolving deliverable (like prototypes of a project)}
@item{Separate deliverables that build on each other (subset of functions that build on each other)}
@item{Incremental views of the same deliverable (datatypes, tests, code)}
]

@subsection{How to Conduct Reviews}

@itemlist[
@item{How much to structure assignments?}
@item{staged artifacts vs iterations on same artifact}

@item{How to assign reviewers: random, let students pick, same reviewer for whole
assignment, assigned by instructor, etc.  Related work:
@url{dl.acm.org/citation.cfm?id=2215100&CFID=353776286&CFTOKEN=25368603}
Note that all of section 9 (Review Assignment) is currently about this topic.}

]

@md-section["sections/rubrics.md"]

@subsection{Designing Feedback Forms}

@md-section["sections/feedback.md"]

@subsection{Anonymity}

@md-section["sections/anonymity.md"]

@subsection{Timing Reviewing}

Reviewing can happen synchronously or asynchronously across students.
Synchronous reviewing occurs when all students submit work for review
(and reviewing commences) at the same time; this model enables careful
assignment of reviewers to work to review.  Asynchronous reviewing
occurs when students submit work for review when it is ready, and
different students are in different stages of review at the same
time; this model gives students more control over their work time.

The group discussed the relative merits of synchronous and
asynchronous review.  Key arguments included:

@itemlist[
@item{The students who submit last might get the least feedback--and they may
be the ones who need it most; this might be an argument for
intermediate deadlines.}

@item{The later the submission the less it's benefiting from in-flow}

@item{Disorganized students who suffer from their disorganization
might blame the review process for failure to improve their work}

@item{Asynchronicity hinders collaboration}
]

@subsection{The Role of Experts}

@md-section["sections/expert-roles.md"]

@subsection{Interaction with Grading Mechanisms}

IFPR may make work improve, but if grading is done on a curve, maybe
it makes no difference, and the competitive element means students may
be less motivated to participate.  In particular, grading on a curve
could interact with @IFPR in three ways:

@itemlist[
@item{Demotivation --- it's not good to help others, because it can push them past you}
@item{Unmotivating --- no reason to respond to feedback/work on reflection, because you can only do so well on the curve}
@item{Destruction --- students can sabotage one another with bad
feedback}
]

@subsection{Does it make sense for non-majors?}

@md-section["sections/non-majors.md"]

@subsection{Pair Programming and IFPR}

@md-section["sections/pair-programming.md"]

@; @subsection{Assigning Reviewers}

@md-section["sections/assigning-reviewers.md"]

@subsection{Grading Reviews}

Class size is clearly a factor here.  If someone wants to use
peer-review to help provide human feedback in large courses, then
giving expert feedback on reviewing might not be feasible.  Are there
ways to give some feedback on reviews in a lightweight manner?

Should reviews affect assignment grades?

Proposal: way to improve giving of feedback is to tie your grade to
that of the person you review

The group frequently considered arguments from Kohn's "Punished by
Rewards" [CITE], which argues that praise and rewards (such as grades)
are ineffective and detrimental motivators.  Reasons for this include 1) rewards punish
2) rewards rupture relationships
3) rewards ignore reasons
4) rewards discourage risk-taking
5) rewards reduce intrinsic motivation.

Proposed solutions generally have three components: 
1) collaboration - enable the exchange of talent and resources, foster a sense of belonging
2) content - let persons do something that is "meaningful" to them
3) choice - don't try to "manipulate" the person

In the context of @IFPR, peer reviews can either serve as "rewards"
(summative assessment in the form of scores/grades) or as constructive
feedback (formative assessment). [FILL]

@subsubsection{Relating auto-grading and in-flow peer review}

When assignment steps can be graded automatically, how much feedback
should go to students and/or reviewers alongside the peer-written
reviews?  Giving auto-grade results could lead to reviewers putting in
less effort (thus masking situations in which the auto-grading missed
something important).

@subsubsection{Comparison to Live Code Review}

@IFPR satisfies different learning goals than live code review, which
is part of many software-development courses.  Live code review
focuses on code, whereas reading reviews gets better at students'
metacognitive development.  IFPR is less intimidating than code
review, as a student is not called upon to defend his own work.

o@subsection{Undesirable Student Behavior}

@subsubsection{Plagiarism and Gaming the Assignment}

@md-section["sections/plagiarism.md"]

@subsection{Mitigating the Costs}

@md-section["sections/mitigating-costs.md"]

@subsection{Helping Students Benefit from the Process}

@itemlist[
@item{Getting students to take peer-comments seriously}
@item{Motivating students}
@item{Interaction between reviewing and developing student confidence}
]

@fill{summary of gdoc}

@section{Evaluation and Analytics for IFPR}

@md-section["sections/evaluation-analytics.md"]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Tool support for @IFPR}

Describe Informa

Describe CaptainTeach

Describe PeerWise 

@section{Desired Features in IFPR Tools}

@section{Assessment of the In-Flow Model Itself}

In-flow Peer Review is a pedagogic idea, and as such, should be
subject to evaluation.  What would such an evaluation look like?  What
are the challenges to doing such an assessment?  What do we want to
know about in-flow peer review?

@itemlist[

@item{How to isolate effects of reviewing?}

@item{How to tease out potential placebo effects?}

@item{What are the right metrics for this?}

@item{What other strategies can we compare in-flow peer review to?}

]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Related Work}

@subsection{Meta-cognitive Reflection}

@relworkfill{Summarize related work on meta-cognitive reflection}

Discussion here needs to cover things like :
@itemlist[
@item{What kinds of questions encourage reflection?}
]

One goal of in-flow review is to encourage reflection @emph{while in the
middle of an assignment}.  Meta-cognitive reflection of techniques and
approaches has been studied as an important part of the learning process, and
others have found effective reviewing and prompting strategies for encouraging
reflection that @IFPR can learn from.

@fill{UTF encodings broke in next paragraph}

Davis and Linn@~cite["davis-reflection-prompts"] use explicit self-review
prompts at different stages of assignments given to eighth graders.  For
example, in one assignment, students had to perform a repeated task (designing
clothing and environments to help cold-blooded aliens survive).  They compared
@;responses to direct prompts submitted along with a design, like ��\200\234Our design
@;will work well because...�⏯������, to prompts designed to encourage reflection after
@;the fact---���⏯������Our design could be better if we...���⏯������--- and plan-ahead prompts
@;designed to cause reflection during the assignment---���⏯������In thinking about doing
@;our design, we need to think about...���⏯������  Their sample size was small, and they
responses to direct prompts submitted along with a design, like "Our design
will work well because...", to prompts designed to encourage reflection after
the fact---"Our design could be better if we..."--- and plan-ahead prompts
designed to cause reflection during the assignment---"In thinking about doing
our design, we need to think about..." Their sample size was small, and they
did not find a significant difference in design quality between the direct and
reflective prompts.  They did find that students gave better explanations when
given the reflective prompts, but the difference could easily be attributed to
the small sample size.

Frederiksen and White have done a series of studies on @emph{reflective
assessment} and @emph{reflective collaboration} in middle school science
classes@~cite["white-reflective-affordances"
"frederiksen-reflective-collaboration"].  In an online environment, students
work on mock experiments using a scientific-method like flow for a project:
they start with an initial inquiry, form hypotheses, analyze mock data, and
draw conclusions.  In between steps, they are asked questions that urge them
to reflect on their work: why they think a hypothesis is true, if they are
being meticulous in analyzing their results, and more.  They are also given
the opportunity to assess the work of other students in the form of ratings.
@fill{Any studies where they ask the reflective questions about the other
students?}

@subsection{Learning By Example}

@relworkfill{Summarize related work on learning by example}

In in-flow peer review, students have the opportunity to take what they learn
from examples of others' work and apply it to their own.

Kulkarni et al@~cite["klemmer-examples"] discuss changes in creative output
between subjects who varying amounts of examples, and diversity in examples,
prior to creating their own artwork.  Subjects seeing more diverse examples
created artwork with more unique features than subjects seeing a less diverse
set or fewer examples.  Students who see more examples from others, especially
when already primed to think about the same problem, may similarly have more
options to draw on in their solution, rather than only using whatever
techniques they would have tried in their initial submission.

The PeerWise

Discussion here needs to cover things like :
@itemlist[
@item{How many examples does one need to see before learning occurs?}
@item{How similar do the examples need to be?}
@item{What scaffolding (i.e., review questions) foster learning from examples?}
]

In PeerWise, students created and reviewed one anothers' multiple-choice
questions, which has elements both of learning by example and of review:
@url{http://dl.acm.org.revproxy.brown.edu/citation.cfm?id=1404526&CFID=472720597&CFTOKEN=32164599}

@subsection{Motivating Participation in Peer Review}

Student motivation affects what they will gain from participating in
peer review.  Peer review requires participation from students in two
roles: reviewer (provider of feedback) and reviewee (recipient of
feedback).  FILL HERE



Motivational factors affect both roles that students
adopt during peer review: as authors of reviews, and as recipients of
reviews.  Peer

@fill{This section still being fleshed out structurally}

In-flow peer review assumes that giving students feedback on their
work while it is in progress (i.e., while they can still impact
grades) will encourage them to take more from the reviews (from the
recipient perspective).  Thus, in-flow is trying to affect a shift
from the extrinsic motivation of "write this review for a grade" to
the intrinstic motivation of "engage in this process so my own grade
gets better" (though note that the extrinsic/intrinsic shift here is
happening in two different roles -- review author and review recipient
-- have to sort that out).

In-flow changes the motivation from being purely extrisnic (eg, "this
will be graded") to intrinsic -- this does not necessarily improve the
quality of feedback, but it should at least improve the desire to
comprehend (and some students will realize that providing good
feedback forces even better comprehension).

Our discussion is framed by an assumption that students want to get as
many points as possible for their work, within reasonable bounds on
time and effort.  While some students are motivated simply by learning
more and improving their skills, we assume that the potential to
impact grades incentivizes students to engage more with in-flow
feedback than with post-submission feedback.  Whether reviews
themselves need to be graded is a separate question, which we discuss
in this report.


@subsection{Peer Instruction}

Peer Instruction (PI), which is a specific form of student centered
pedagogy [Ville 3], has been shown to be a promising way for improve student
performance@~cite["crouch-mazur-peer-instr-10-years"] and engagement
@~cite["simon-peer-instruction-icer13"] both in introductory courses
@~cite["crouch-mazur-peer-instr-10-years"] and upper-division courses
@~cite["lee-peer-instr-upper-level-13"]. Peer instruction, as defined by Crouch
et. al.@~cite["crouch-mazur-peer-instr-10-years"], focuses on
engaging students in activities that require them to apply the core
concepts under study and to explain these concepts to their
peers. Concretely, a class taught using PI principles can consist of
short presentations, each of which focuses on a particular core
concept and is tested by presenting students a conceptual question,
which the students first solve individually and then discuss in
groups. The PI pedagogies link with the concepts of blended learning
and flipped classroom [Ville 4] in that PI requires students to study
preparatory material before attending the class.

Related to our undertaking, the most interesting component of PI is
the student peer discussions that are undertaken after presentation of
each concept. This, however, is not peer review.


@subsection{Helping Students Be Successful Reviewers}

@relworkfill{Related work on what makes students successful at
reviewing}

Related work discussion should address:
@itemlist[
@item{Arguments for providing structured rubrics}
@item{Guidelines for good rubrics (Klemmer?)}
]

To read:

Klemmer and others on accuracy/rubrics: @url{http://dl.acm.org/citation.cfm?id=2505057} and @url{http://hci.stanford.edu/publications/paper.php?id=209}

The notion of a Pedagogic Code Review with a moderator and a detailed plan for
what to look for in a review: @url{http://dl.acm.org/citation.cfm?id=1734324},
@url{http://dl.acm.org/citation.cfm?id=1508972}

Comparing students to experts in writing reviews: @url{https://www.sciencedirect.com/science/article/pii/S0959475209000747}

@subsection{Providing Feedback on Reviews}

@relworkfill{Summarize work on review feedback}

@itemlist[
@item{What kind of feedback is useful?}
@item{Do experts need to provide the feedback?}
]

Cho and MacArthur compare three approaches to giving feedback on
written assignments in a psychology course: feedback from a single
peer, feedback from a single topic expert, and feedback from multiple
peers@~cite["cho-peer-expert-reviewing10"]. The results indicate that
feedback from multiple peers results in better quality revisions than
feedback from an expert, with feedback from a single peer being the
worse.  The hypothesised reason for this was that peers gave feedback
that was phrased in terms that students could more easily comprehend.
It certainly would be interesting to see whether the same results
applied to programming assignments.


Metareviewing to determine quality of reviews by Gehringer/Expertiza:
@url{http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.416.228},
@url{http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=5992285&url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D5992285},
@url{https://6c27b932-a-4ecc3149-s-sites.googlegroups.com/a/cspred.org/2010/proceedings/11-cspred2010_submission_3.pdf}

Expertiza also mentions an explicit review of review phase in
@url{http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.161.8397}, and
@url{http://www.igi-global.com/chapter/monitoring-assessment-online-collaborative-environments/36844}
might have even more on that.

@subsection{Comprehending Program Structure}

For in-flow assignments centered around programming, one goal of
peer-review is to help students reflect on their code structure.
There is a rich literature on program comprehension (particularly
contrasting experts and novices), but much of that focuses on
understanding @italic{behavior} of a new program.  In the in-flow
peer-review context, students already know the problem and (roughly)
what the program is supposed to do.  Reading others' code therefore
has different goals: notably, to understand the structure that someone
else brought to the problem and to contrast that with one's own.

@relworkfill{Discuss related work around comprehending code
organization}

Related work discussion should address:
@itemlist[
@item{How do people uncover the structure of a program?}
]

To read:


The WG on program comprehension: @url{http://dl.acm.org/citation.cfm?id=1971687}

Several of the program comprehension works they reviewed:

@url{http://dl.acm.org/citation.cfm?id=169088},
@url{http://dl.acm.org/citation.cfm?id=322685&CFID=472720597&CFTOKEN=32164599},
@url{http://www.cs.kent.edu/~jmaletic/Prog-Comp/Papers/soloway84.pdf},
@url{http://www.sciencedirect.com/science/article/pii/016412128790032X}

(What implications does this have for the experience level at which
students can meaningfully engage in ifpr?  They need certain maturity
to chunk, but chunking isn't necessarily needed on small programs.)

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@subsection{Increasing Socialization in Programming-Oriented Courses}

@relworkfill{Work on creating socialization}

@itemlist[
@item{Pair Programming}
@item{Computer-mediated communication in collaborative educational settings (see ITiCSE WG 1997)}
@item{Peer mentoring (across different class groups, but still the goal is socializing)}
]

Barker et al. describe the outcome of running an IT course more like a
fine arts course than a traditional engineering course@~cite["barker-fine-arts-approach-cs05"]. This included
projects that were more meaningful, public critique of results, and
routing collaboration.  This approach created a classroom culture
where learning is a social and community process, rather than
individualised, and the result was a greater retention of female
students than the tranditional engineering teaching approach.

The technique most relevant for in-flow peer review, though not
completely the same, is the approach to knowledge sharing during lab
work. Students actively sort help from any student, for example, by
yelling questions out, resulting in a fluid exchange of ideas and
techniques. Even though the projects considered in these labs were run
in an open, collaborative setting, cheating was avoiding by using
individualised assignments.

To read:

Specifically about communication and the social climate in CS: @url{http://dl.acm.org/citation.cfm?id=1060073}

Peer mentoring: A Mentor Program in CS1.  @url{http://dl.acm.org/citation.cfm?id=544420}


@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@subsection{Industrial Peer-Review Practice}

Code review is an essential component of industrial
software-development practice.  Industrial peer review is inherently
in-flow, as reviews are conducted on a regular basis during product
development.  The industrial product-development lifecycle is longer
than that in many courses, but best practices in industrial peer
review are still useful context for this report.

@relworkfill{Summarize related work on industrial code review}

Relwork discussion should address:
@itemlist[
@item{Best practices around live versus online}
@item{Best practices on point at which to do review}
@item{Any particulars on the issues that review focuses on?}
]

On OSS (Apache), all remote and distributed, good RQs about finding defects,
size of review code unit, size of review team etc:
@url{dl.acm.org/citation.cfm?id=1368162}

A recent update on professional code review (ICSE 2013):
@url{http://dl.acm.org/citation.cfm?id=2486882}

The SmartBear study, including the summary blog post.  

@subsection{Existing Uses of In-flow Peer Review}

Others have used strategies for peer review that fall under the umbrella of
in-flow peer review, even though they did not go by that name.

@fill{Re-UTF encode Sondergaard}

For example, in the implementation of a multi-stage compiler, students in
Sondergaard's course review one another's work between stages
@~cite{sondergaard-peer-review-compilers09}.  The evaluation in that work was
only in the form of surveys after the assignment, but shows generally positive
attitudes from students indicating that they felt the review had helped.

Expertiza@~cite{gehringer-expertiza-approach} is discussed in @ref{relwork
for review-of-review}, and is used for large, multi-stage collaborative
projects in which students build and review smaller components that build up
the whole.  This includes assessment and review of the reviews themselves as
an explicit motivator for performing the review.  It is notable that in
Expertiza, students often review other students' components of a larger whole,
which can be a task that the reviewer didn't complete him or herself.  In many
of our case studies of in-flow review, students review an instance of the
@emph{same} work that they just did themselves @fill{check that this is
accurate after going through the case studies}.

@subsection{Actionable Peer Review}

@fill{re-UTF Aropa}

Some other uses of peer review on large projects are related to in-flow peer
review because they allow students to improve their work in response to
review.  These uses don't necessarily stage assignments into reviewable
pieces, instead performing review on entire intermediate artifacts.  For
example, Clark has students exercise the functionality of one anothers'
projects, and lets groups improve their work based on the feedback their
classmates give them@~cite["clark-peer-testing-se-04"].  Similarly, Wang, et
al., Zeller, and the Aropa system study assignment structures that allow
students to update revisions of entire submissions that were reviewed by peers
@~cite["wang-pcr" "zeller-read-review-00" "hamer-aropa"].  Other studies have
students write test cases (or manually test) one another's work as part of a
review@~cite["reily-aggregate-reviews09" "smith-peer-testing-icer12"].  These
tests are most often on entire systems, rather than on pieces of a project
that build up along with reviews.  Students do, however, have the chance to
improve their projects in response to their peers' feedback.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Conclusion}

@(generate-bib)

@section[#:tag "s:case-studies"]{Appendix --- Case Studies}

[Have pulled in one for now, to see how our default formatting works
-- need to fix this.]

@md-section["../in-flow-assignments/fisler/asgn-1.md"]
