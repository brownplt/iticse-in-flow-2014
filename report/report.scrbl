#lang scribble/sigplan @noqcourier

@;;; TODOs ;;;;;;
@; pull in case studies as subsections of appendix
@; fill in remaining related work
@; fix quotes (replace " with `` and '')
@; normalize bib files: author naming convention, figure out order of entries
@; clean and condense case studies summary table to fit on a page
@; fix Matthew's tables.rkt functions to generate table properly (or
@;    pull it in as an image generated through normal latex
@; finish tightening prose from the sections that the others drafted
@; resolve remaining cite and ref markers
@; send out to rest of WG in case anyone wants to comment
@; Ville said to cite Latham and Locke 1991 (on motivation?) check into it

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

@para{}

@para{

@bold{Note to reviewers:} This document is obviously very much a
draft: expect some replication of context across sections (drafted by
different authors), unresolved references, self-notes to authors, and
loose prose.  We will rectify all of these before submitting the
report for actual review.

}

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
@emph{judgment}.  Further, the review process could potentially flag
naive forms of plagiarism, allowing it to be addressed and resolved
prior to final submission.}

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
MOOCs@~cite["kwl...:peer-self-assess-mooc"]), adds subtlety to all of these
questions.  Liu and Carless
distinguish between @emph{peer feedback} and @emph{peer
assessment}@~cite["liu-peer-feedback"], where the
latter's goal is grading, and the former's is collaboration -- @IFPR is
primarily focused on peer feedback, not peer assessment.

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
employ.
This section briefly outlines some of these decision points,
with references to the rest of the document for more details.

@subsection{The @IFPR Process}

@IFPR follows a particular process for assignments.  In order to have an
in-flow component, the assignment requires at least one reviewable submission
that occurs before the final deadline of the assignment.  This requires
thinking through a few procedural questions that all in-flow assignments must
address:

@itemlist[

@item{The choice of submissions. How should an assignment be broken down
into multiple stages? Even in a programming assignment, there are many
choices: tests before code; data structures before tests; design
documents and architectural specifications before code; multiple
iterations of code; and so on.  Some choices raise more concerns
regarding plagiarism, while others only work under certain assumptions
about software development methodologies. (@Secref["s:artifacts"])}

@item{The distribution of reviewing. E.g.: Should reviewing be
distributed in order of submission? Randomly? Between students of
similar or opposite attainment levels?  Synchronizing review across
students enables more policies on reviewer assignments, but incurs
overhead for students and staff through more course deadlines. 
(@Secref["s:asgn-revs-timing"])} 

@item{The manner in which reviews are conducted.  This includes the
choice of review ``technology'': should reviewing by mediated by a computer
application or should it be done face-to-face (perhaps as a small group
meeting around a table).  This also includes the use of rubrics: On the one
hand, rubrics for
reviewing guide the reviewer and may result in more concrete, actionable
outcomes. On the other hand, a rubric can result in less constructive
engagement and may result in important issues being missed.
(@Secref["s:rubrics"])}

]

@subsection{Issues Surrounding @IFPR}

There are a number of other cross-cutting issues that inform the choices made
in the in-flow process,  and affect the appropriateness and effectiveness of
@IFPR in particular contexts:

@itemlist[

@item{The role of anonymity. When, if ever, should authors and
reviewers know about each others' identity? Using single- and
double-blind reviewing systems introduces trade-offs between
protecting students' identity, creating the potential for abuse, and
introducing them to norms of professional behavior, all of which need
to be taken into account.  Anonymity may enable more students to
participate comfortably, at the cost of missed opportunities for creating
cultures of collaboration and professional working behavior.
(@Secref["s:anon"])}

@item{The role of experts. Experts can play any number of roles from
being entirely hands-off and treating this as an entirely student-run
process (presumably after introducing the process and its purpose) to
intervening only periodically to constantly monitoring and even
grading the responses. These roles set different tones between
students regarding expertise and authority, but also help set
standards while students are new to the process. (@Secref["s:experts"])}

@item{Suitability for non-majors. While IFPR is easy to justify for
majors because of its correspondence to industrial practice
(code-reviews), the industrial argument makes less sense for
non-majors.  Objectives around collaboration and creating standards of
evaluation, however, seem to apply to both majors and non-majors.
(@Secref["s:nonmajors"])}

@item{The relationship to pair-programming. Pair-programming might
appear to also be a kind of IFPR---indeed, an extreme version of
it. However, the two processes are somewhat different and
complementary. (@Secref["s:pairprog"])}

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
is called a @emph{respondent}.}

@item{A @emph{reviewing assignment} indicates which reviewers are
expected to produce reviews for each submission.}

]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Educational Goals of @IFPR}

Both peer review and the in-flow variant target a complex and
interesting set of educational goals, some student focused and some
instructor focused.  Working group members were surprised at the
subtleties that these goals brought to questions about how to
configure @|IFPR|.  Indeed, many found discussions of the educational
goals (and their impacts) the most thought-provoking aspect of our
discussions.  We lay out the goals here, referring back to them as we
discuss configurations of @IFPR throughout the report.

@subsection{Student Learning Objectives}

Fundamentally, @IFPR fosters collaborative learning in which students
can practice several critical skills:

@itemlist[
@item{Assessing whether another's work satisfies problem requirements}
@item{Providing actionable, useful, and appropriate feedback to others}
@item{Extracting high-level design choices from anothers' work}
@item{Comparing others' high-level design choices and practices to one's own}
@item{Deciding whether to adopt or ignore particular feedback or
ideas}
@item{Learning to value and grant authority to feedback from peers}
]

The first two items arise primarily in students' role as reviewers,
and are common to all forms of peer-review.  The remaining tasks arise
more in students' role as recipients of reviews, and have more urgency
in an in-flow context.  In the context of Bloom's taxonomy [CITE],
these skills move students beyond ``remember'', ``understand'', and
``apply'' into ``evaluate''.  They engage students in reflection and
meta-cognitive thinking about their own work, while also requiring
students to be able to communicate technical issues clearly to others.

Beyond these goals, regular comparison of one's own work to that of
others can help students calibrate their abilities.  In particular, it
should provide means for students to gain confidence and self-efficacy
in their work, and in discussing the works of others.

The extent to which @IFPR targets these goals depends largely on the
artifacts students are asked to review, the criteria or rubrics
through which they produce reviews, the means through which students
are expected to respond to reviews, and the feedback students receive
on their reviews.  Some configurations of peer review, particularly
those designed simply to scale grading, naturally and necessarily
de-emphasize some of these goals.  @Secref["s:issues"] explores
these tradeoffs in detail.

The emphasis on collaboration in these goals illustrates that @IFPR is
an example of a Contributing Student Pedagogy
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

@subsection{Instructor Goals}

From an instructor's perspective, @IFPR can target several
objectives, including:

@itemlist[#:style 'ordered
@item{Emphasizing the importance of writing in technical contexts}
@item{Providing human feedback more scalably and more timely than with
only expert assessment}
@item{Providing an additional perspective on how students perceive
course material, since students express their understanding
in a way other than just their assignment submissions}
@item{Increasing social interaction within computing and programming,
addressing a common misconception about working in the discipline}
@item{Fostering engagement of and interaction between students from
different cultures}
@item{Helping students improve performance and learning while actively
engaged with course material}
@item{Re-examining plagiarism issues by moving the problem}
]

The first three objectives arise in most forms of peer-review.  The
second two arise in general peer-review, though the immediacy of the
in-flow context likely enhances their impact.  The last two are more
directly associated with @|IFPR|.

All of the working group members were interested in @IFPR more as a
way to enhance students' learning than as a way to scale grading.
Indeed, most members were open to (if not already) investing
additional staff resources in making sure students were learning
reviewing skills from a peer-review process.  The members were
interested in the insights they could gain as instructors from
attending to the third objective (though none believed that grading
all of the reviews was scalable or cost-effective).

The group also coalesced around the social benefits of peer review,
seeing this as an important aspect of developing competant
professionals.  Many of our discussions about giving review feedback
and whether reviewing should be anonymous revolved around the impacts
these issues could have on collaboration and socialization through
peer review.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Examples of @IFPR}

@(figure* "i:case-studies"
          "Summary of Case Studies: First-Year, Second-Year and Non-majors courses"
 @tabular[
  #:style (style #f (list (attributes '((style . "border-collapse: collapse;")))))
  #:column-properties (list (list (attributes '((style . "border: 1px solid black;")))))
  (add-width-wrappers
   (list "1in" "1.5in" "2in" "2in") 
   (list
     (list @list{@bold{Course and Level}} @list{@bold{Exercise}}
           @list{@bold{Submissions}} @list{@bold{Review Criteria}})
     (list @list{Computing for Social Sciences and Humanities (undergrad nonmajors)}
	   @list{Cluster data on voting records (US Senate) to identify senators with similar ideology}
	   @list{Code and tests for instructor-defined subsets of overall functionality}
	   @list{Provide scores from 0 to 100 on each of (a) whether
			 tests meaningfully capture the assignment
			 purpose, and (b) whether code performs the
			 corresponding computation correctly }
	   )
     (list @list{CS1}
	   @list{Write code and assertions for various components of a pinball game}
	   @list{Work so far on subset of functions designated by instructor}
	   @list{Rate readability and correctness; additional free-form comments}
	   )
     (list @list{Advanced CS1 with Data Structures}
	   @list{Design a data structure for incremental and
			functional updates on trees}
	   @list{Datatype definition with instances of the data, test cases, complete programs}
	   @list{Indicate whether (a) data structure can support required operations within
		     time bounds, (b) interesting examples of
		     data are missing, (c) tests offer good coverage and are correct }
	   )
     (list @list{Programming Fundamentals 2 (2nd semester undergrad)}
	   @list{In-class clicker assignment to explain control-flow through if-statements}
	   @list{CFGs for code snippets (drawn through custom software package)}
	   @list{Provide yes/no assessment of whether CFG is accurate}
	   )
     (list @list{Imperative and OO Programming Methodology (2nd year)}
	   @list{Implement a program that satisfies a student-selected set of learning goals}
	   @list{Description of learning goals covered by program, program code, and
			 give presentation on how program achieves goals }
	   @list{Instructor-provided template on choice of goals, whether program satisfied them, and presentation quality }
	   )
     (list @list{Imperative and OO Programming Methodology (2nd year)}
	   @list{Implement simple Pong game in model-view-controller style}
	   @list{Tests, two draft implementations, and a final implementation }
	   @list{questions about whether key components are present;
			   whether tests are reasonably complete and
			   motivated; whether good code practice followed (i.e., 
			   naming, structure,
			   identation) }
	   )
	))
])

@(figure* "i:case-studies-cont"
          "Summary of Case Studies: upper-level undergraduate and graduate courses"
 @tabular[
  #:style (style #f (list (attributes '((style . "border-collapse: collapse;")))))
  #:column-properties (list (list (attributes '((style . "border: 1px solid black;")))))
  (add-width-wrappers
   (list "1in" "1.5in" "2in" "2in") 
   (list
     (list @list{@bold{Course and Level}} @list{@bold{Exercise}}
           @list{@bold{Submissions}} @list{@bold{Review Criteria}})
     (list @list{Introduction to Functional Programming (upper undergrad/MS)}
	   @list{Implement Boggle (find all valid words in 4x4 grid)}
	   @list{Decomposition of overall problem into tasks 
			       (with quickcheck assertions), tests, code} 
	   @list{check decomposition makes sense, presenting
		       alternative if own differs from reviewed one;
		       try own test suite on the code being reviewed }
	   )
     (list @list{Advanced Sofware Design (upper undergrad/MS)}
	   @list{Design and implement subset of a mobile app+server for a
			game using iterative development }  
	   @list{Design documents so far}
	   @list{Free-form comments on comprehensibility, quality of
			   documentation, coverage of use cases,
			   adherence to design principles, and choice of
			   subsystem to implement; concrete examples
			   required to illustrate each point }
	   )
     (list @list{Collaborative Computing (MS)}
	   @list{Collaboratively produce a research article}
	   @list{Drafts of article}
	   @list{Conference-paper reviewing rubric: questions on
			    suitability for audience, originality and
			    demonstrated knowledge in contribution,
			    eveidence for arguments, methods,
			    presentation, etc. }
	   )
     (list @list{Software Security (upper undergrad/MS)}
	   @list{Find ways to attack a web-based application
                 (black-box, then white-box)}
	   @list{Description of strategy to use in attacking
                 the application in black-box fashion.}
	   @list{Free-form comments on comprehensiveness and
                 appropriateness of attack strategy}
	   )
     (list @list{Software Modeling and Verification (upper undergrad/MS)}
	   @list{Use model checking to find flaws in a protocol}
	   @list{Proposed model of the system environment and desired properties that should (not) hold under this model}
	   @list{Assess whether model conforms to problem and whether
			model supports/masks the properties provided
			with the model; comment on good/bad features
			of this model }
	   )
     (list @list{Software Performance (MS)}
	   @list{Develop an extension to the Jikes visual debugger}
	   @list{Proposed extension, prototypes, final artifact}
	   @list{Comment on one thing they particularly like and one
			 aspect that could be improved; evaluate
                         prototypes following in-class presentations by
			 each team; review final artifact for
			 usability, extensibility, and
			 documentation }
	   )
     (list @list{Logic for System Modelling (upper undergrad/MS)}
	   @list{Write a relational (Alloy) model of an elevator}
	   @list{Model of data components, description of desired properties of model, initial model of elevator operations}
	   @list{Comment on whether components/properties are missing,
                 whether they are reasonable, and whether model is
		 suitably operational or too declarative} 
	   )
     (list @list{Programming Languages (upper undergrad/grad)}
	   @list{Provide a test suite and implementation for a type
			 checker}
	   @list{Tests first, implementations later
		 (submission deadlines not synchronized across students, but must occur
		 in order per student)}
	   @list{Set of ~10 specific questions about test coverage, plus
		     free-form comments on style or organization of
		     test suite; no peer review on implementations }
	   )
     (list @list{Software Security (MS)}
	   @list{Implement simple on-line web-app on a strict
			   timetable, then create attack trees for it}
	   @list{Initial program, attack trees, and secured
		 application along with review of differences between original and
		 secured application and results of using static
		 analysis and fuzzing tools on the implementation}
	   @list{Free-form comparison to what was done in own solution}
	   )
  ))
])
The case studies from working group members covered a variety of
student levels and course types.  More interestingly, they varied
widely in the kinds of artifacts and processes that they suggested for
@|IFPR|.  @(Figure-ref "i:case-studies") and @(figure-ref
"i:case-studies-cont") summarize the key
parameters of the case studies.  The table lists the name and level of
the course, describes the assignment in which @IFPR was used,
describes the submissions that were reviewed, and describes the review
criteria for submissions.  Courses with [*] after their descriptions
have been used in actual courses; the rest are hypothetical uses
proposed by working group members, based on exercises in their current
courses.

The full case-study descriptions appear in @secref["s:case-studies"].
The source files are also available at
@(url "https://github.com/brownplt/iticse-in-flow-2014/tree/master/in-flow-assignments").

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section[#:tag "s:process"]{The In-Flow Process}

There are a series of steps that are a part of any in-flow assignment, as
illustrated in @(figure-ref "i:terminology").  This section lays out the
process of submissions, reviews, and meta-reviews in more detail, along with
the design decisions that the group identified for each activity.
@Secref["s:issues"] continues by discussing issues that cross-cut the process.

@;{
The working group identified a series of parameters, issues, and
logistical questions that surround the idea of @|IFPR|.  In most cases, we
don't expect that the discussion provides one answer for how to structure an
@IFPR assignment or course.  Instead, we aim to lay out the design space of
@IFPR so that researchers and practitioners can understand tradeoffs that they
might otherwise not explicitly consider when setting up a study or assignment.

The design space of @IFPR is wide.  We attempt to start with necessary
components of @IFPR to narrow our focus and set context, and then discuss
issues within that context.  However, these design considerations are often
heavily mutually referential (e.g. it is hard to discuss review rubrics
without reference to the submission under review), so these subsections may be
difficult to understand in isolation.
}

@subsection[#:tag "s:artifacts"]{Stages and Submissions}

As the case studies in @(figure-ref "i:case-studies") and @(figure-ref
"i:case-studies-cont") show, @IFPR can be used with many
different kinds of submissions.  Even once an
instructor has identified the general class of artifacts to review
(such as papers versus code), they can choose different ways to use
@IFPR to build up to final versions.  The group identified four broad
choices in the artifacts to be reviewed:

@itemlist[

@item{Multiple iterations of the same specific deliverable:
This approach is the most similar to existing peer grading approaches, where
an entire deliverable is presented for review.  This mirrors common practice
in courses where students do peer review of written work, which is
well-studied in contexts other than computer science.  Little extra work in
assignment design is required to have students review drafts, so this provides
a low-friction way to adapt an existing assignment for @|IFPR|. One consideration is
that plagiarism can be more of a problem in programming tasks that are the
same across students than in writing tasks where goals are less objective and
more variance is expected.  Showing students entire solutions before the
deadline exposes more opportunities for wholesale copying.  We discuss
plagiarism (and mitigations) more in @secref["s:plagiarism"].  [FILL label
case studies]}

@item{Multiple iterations of an evolving deliverable:
Some projects don't have drafts so much as an evolving set of specifications
and deliverables.  For example, in a long-term software engineering project,
the demands of the system may change over time as new requirements are
discovered.  This is distinct from multiple iterations of the same deliverable
because the goal itself changes along with the submission.  Both high-level
feedback on the direction of the project and low-level implementation
feedback can be helpful in this setting.
[FILL label case studies]
}

@item{Separate deliverables that build on each other:
Often, programming assignments can be broken down into several
subproblems, often expressed via decomposition into helper functions or
separate classes.  If the assignment naturally lends itself to this kind of
breakdown, a natural strategy for using in-flow review is to review the pieces
individually, to catch mistakes in the components before composing them into a
final solution.  This approach lends itself well to evaluation, as well,
because the separate components can be assessed in isolation, and on the
initial, pre-review submission as well as after.  Also, if the instructor
decides on the decomposition, they have a lot of control over the path
students take through the assignment, which can inform decisions about rubrics
and feedback guidance.
[FILL label case studies]
}

@item{Incremental views of the same deliverable:
Programming problems can have a number of distinct artifacts associated with
them other than just code:  They have documentation, tests, specifications,
underlying data representations, measurable behavior like time and memory
complexity, visualizations, and more.  Having students produce different views
on the same problem, with review in between, is another way to break up the
assignment.  For example, an assignment might proceed with a test-first or
test-last approach, with review before or after a test suite is written.  This
focuses students on different aspects of the problem in their different stages
of review.
[FILL label case studies]
}
]

The nature of the reviewed submission naturally affects the time required
for review, as well as the amount of expert guidance required
(students' will have more experience with evaluating some artifacts
over others).  In turn, the course's learning objectives should guide
the choice of artifacts: preparing students to participate in
industrial code review, for example, will be better served by using
@IFPR on code-based artifacts rather than written papers.

@subsection[#:tag "s:asgn-revs-timing"]{Assigning and Scheduling Reviews}

The @IFPR process requires both scheduling time into assignments for
performing review, and assigning reviewers to artifacts for review.

@subsubsection[#:tag "s:scheduling"]{Scheduling Decisions}

The major scheduling decision in @IFPR is whether reviewing happens
@emph{synchronously} or @emph{asynchronously}.

Synchronous reviewing occurs when all students submit work for review
(and reviewing commences) at the same time.  Asynchronous reviewing
occurs when students submit work for review when it is ready, and
different students are in different stages of review at the same
time.  The two scheduling modes have several tradeoffs:

@itemlist[

@item{If all students are forced to submit before review starts, there is the
full pool of reviews to draw from in any review assignment strategy
(@secref["s:assigning"]).  In the asynchronous setting, students can only
review submissions that occurred before theirs, which can skew the reviewing
process if, for example, high-achieving students tend to submit early.}

@item{With intermediate deadlines, all students have the same time to use
review information.  If there are no intermediate deadlines, students who
submit later have less time to use the information from the review process
before the deadline.}

@item{In the asynchronous setting, students who want to work at their own pace
can, and the process doesn't stop them from continuing with their work.  With
intermediate deadlines, a student cannot do the work on their own schedule.}

@item{If reviews are available and presented to students immediately
immediately after they submit, the problem is more likely to be fresh in their
mind.  In the synchronous setting, there can be a longer gap between
submission and review.  It's not clear if one is particularly better than the
other -- coming back to a problem after not thinking about it for a while can
be beneficial, but it also takes time to recall the problem and re-load it
into working memory in order to perform review.}

@item{Synchronous reviewing requires extra scheduling overhead that is likely
to lengthen assignments for purely logistic reasons.  Asynchronous reviewing
doesn't require extra scheduling work in the assignment, it just changes the
kind of work students have to do.}

]

With synchronous reviewing, there is an extra question of if there should be
separate time set aside for reviewing in between submissions (with a review
submission deadline), or if reviews can be completely in parallel with the
next submission step.  This can affect the timeliness of reviews, which can
affect how useful the review is to the reviewee as they move forward with the
assignment.


@subsubsection[#:tag "s:assigning"]{Assigning Reviewers to Submissions}

Whether reviewing is synchronous or asynchronous, in order to perform review,
the assignment needs to have a strategy for assigning students to review
submissions.  As with other design decisions in @IFPR, any decision has
tradeoffs and depends on course context and goals.  We identified both a
number of methods for assigning submissions to students to review, and several
miscellaneous modifiers that could apply.  We note when a particular strategy
is more or less appropriate in synchronous or asynchronous settings, as well.

@itemlist[
  @item{@bold{Random Assignment}:
  Perhaps the most obvious and simple method for reviewer assignment is random:
  each reviewer is assigned one or more submissions at random to review.  There
  are of course many types of randomness -- it is probably useful to ensure that
  all submissions get the same number of reviews if possible, for example.  In
  the asynchronous setting, the pool of reviews drawn from will necessarily be
  smaller (since it only consists of already-submitted reviews), and this skews
  the selection.  In an asynchronous setting, random assignment also lacks
  temporal fairness -- the most recent submission isn't guaranteed to be
  reviewed first, which can weaken the benefit of quick feedback in the
  asynchronous model.
  }

@item{@bold{Temporal Assignment}

Reviews can also be assigned in the order they were received.  It's not clear
that this makes much sense for synchronous review, where temporal order is
somewhat unrelated to motivations for assigning reviews.  However, in the
asynchronous case, assigning reviews in the order submissions are received
helps ensure that feedback happens as quickly as possible (assuming that
students complete reviews at around the same rate).  We also note that if
students are aware that temporal ordering is occurring, they can collude to
time their submissions in order to ensure or avoid particular review pairings.
Using a mix of randomness and temporal ordering could alleviate this somewhat,
at some minor cost to review turnaround time.
}

@item{@bold{By Metric}

There are a number of metrics that could be used to assign reviews with the
goal of getting more effective feedback for students.  We identified at least:

@itemlist[
  @item{@bold{Achievement}: Students could be matched to other students with
  similar or different levels of achievement on past assignments (or, if the
  assignment can be evaluated automatically, even on the current assignment).
  Existing research shows that on group work, pairing weak and strong students
  can help the weak students (though the strong students don't do as well
  either)@~cite["hooper-mixed-acheivement"].  The effects of such an
  assignment are certainly course- and assignment- specific.}

  @item{@bold{Prior Review Quality}: If the course tracks review quality
  through meta-reviewing (@secref["s:meta-reviewing"]), the system could
  assign consistently strong reviewers to weak work in order to maximize
  improvement (again, ``weak work'' could be predicted by past achievement of
  students, or by an automatic grading system).}

  @item{@bold{Similarity Between Solutions}: Students acting as reviewers may
  learn more from seeing a variety of solutions that are different from their
  own.  They may also be more able to review solutions that are similar to
  their own.  Depending on the assignment and learning goals, it could be
  valuable to groups students based on solution approach or code similarity.}
]

We expect that by-metric assignments work best synchronously, because the it
is difficult to perform the assignment until the metric can be measured for
all students.  Doing a by-metric assignment of reviews asynchronously is
possible if the metric is known before submission (e.g. if only using past
submission performance), but it would result in some students waiting for
their assigned-by-metric reviewee to submit.
}

@item{@bold{Student-chosen}

Students could also be involved in choosing which submissions, or other
students, they review.  For example, a simple model could have all submissions
go into a publicly-visible pool of submissions, from which students choose
submissions to review.  The assignment could require that students perform
some number of reviews, and remove submissions from the pool once they have
been reviewed enough times in order to avoid a small number of submissions
getting more reviews than others.  This works with both asynchronous and
synchronous-style scheduling, but can be problematic if the limits are too
rigid and some students submit very late, so there aren't submissions
available to review for even conscientious students.  A solution is to
pre-seed the set of submissions with some instructor-provided submissions in
order to ensure enough supply.

Students could also choose partners for review independent of particular
submissions.  It might be reasonable to switch to a student-chosen partner
approach after having assignments with other review assignment strategies,
once students have decided they enjoy collaborating together.  This also works
fine in both synchronous and asynchronous styles -- students may even arrange
to complete their work at a time convenient for their reviewer in order to get
the most prompt feedback.

All student-chosen strategies for review interact heavily with choices about
anonymity of the review process, which we discuss in more detail in
@secref["s:anon"].

}

]

In addition to these strategies, there are a few other factors for educators
to consider in assigning reviews:

@itemlist[

  @item{@bold{Groups vs. individual}: The review assignment strategies in this
  section aren't limited to only pairs of reviewers and reviewees.  It would
  be perfectly reasonable for a group of reviewers to all create a review
  together through discussion, whether online or in person.  The same
  parameters of randomness, temporality, and so on apply.  Anonymity is
  possible but more difficult when a discussion between multiple students is
  involved.  We discuss the contents of reviews and review discussions more in
  @secref["s:reviews"].}

  @item{@bold{Class-wide review}: At the extreme end of group review is a
  review that involves (potentially) the whole class.  This could be, for
  example, a presentation that the whole class comments on immediately, or a
  collective review process as in a studio art course, where work is presented
  and discussed publicly.  In an online tool, work can even be published
  publicly but anonymously, and allow for any interested class member to
  comment.}

  @item{@bold{Mutual reviews}: Reviewer-reviewee pairs can be mutual or
  disjoint -- students may form pairs (or groups where everyone reviews
  everyone else) that review one another, or there may be only a one-way
  connection between reviewer and reviewee.  Mutual reviewing could provide
  more concrete motivation (other than abstract altriusm or a grade), if
  students are helping someone who is actively helping them in return.  Mutual
  reviewing can still retain anonymity.}

  @item{@bold{Persistent review assignments}: In an assignment with two or
  more reviewed stages, reviewers can change at each stage, or continue to be
  the same throughout the process.  One study reports that, for assignments
  with more than 4-5 stages, switching authors at each stage made the reviewing
  burden onerous@~cite["politz-ct-iticse14"].  Continuing to review the same
  author's work may have lessened this burden, since the comprehension effort
  from earlier stages would carry over.}

]

The group identified these strategies as options for assigning reviewers to
submissions, and there may be other ways to assign submissions for review.
For example, we assumed that the reviewers were drawn from within the class
(which may not be the case in e.g. a peer mentoring situation [CITE]).  In a
class where there are communication or language barriers between students, it
may also make sense to assign reviewers so that communication is maximized or
the challenge of communicating in another language is maximized.  It may also
be useful to secretly or not secretly assign instructors or TAs as reviewers
and reviewees sometimes in order to guide or monitor the process.  We discuss
instructor and TA participation in reviews more in @secref["s:experts"].

@subsection[#:tag "s:reviews"]{Performing Review}

There are many options for the form and creation of a peer review.  Much of
the discussion focused on @emph{review rubrics}, which can be used to guide
feedback to specific features of the assignment and focus students.  We also
discussed several forms that reviews could take, noting that technology often
guides programming courses towards text-based feedback.

@subsubsection[#:tag "s:rubrics"]{Review Rubrics}

Rubrics serve two important goals in any form of peer review: they
communicate expectations to reviewers (serving as a form of
scaffolding), and they help ensure that all authors receive a certain
level of quality in their feedback.  While these goals suggest highly-structured
rubrics, overly structured rubrics can limit reviewers' and authors'
attention to the questions on the rubric.  They can also provide too
much scaffolding, especially once students need to practice evaluating
work from scratch. The tradeoffs around designing rubrics must balance
these tensions.

Rubric design must consider the rubrics' utility for
the reviewer, the author, and the instructor seeking to
understand how students are performing.  These goals are not
necessarily at odds with one another, but are not necessarily
achievable through the same means.

The working group identified several potential roles for rubrics:

@itemlist[

@item{@bold{Rubrics as training wheels}:
    Rubrics can be great as training wheels, especially early in 
    the student's career as a reviewer.  A beginning student who
    is learning to both read and write code might not know where
    to start in critiquing a program.  Prompting with specific questions
    help in situations where students don't yet know how to structure a review
    from scratch.
    }

@item{@bold{Rubrics for focus}:
    A rubric can focus students'
    attention on different areas depending on the goals of an assignment and
    the reviews for it.  For example, it could prompt 
    code-specific questions ("Is this code well-documented?", "Are
    all the type annotations correct?", etc.), to problem-specific questions
    ("Is there a test for a list with duplicate elements?", "Does this
    program meet the problem specification for input X?", etc.), to prompts
    that encourage actionable feedback ("Provide a test case that this
    solution does not pass.").
    Students may also optionally ask for reviews with a certain 
    focus when offering submissions for review. This might help
    to ensure relevance of the review for the author. 
    }

@item{@bold{Rubrics as an alibi}:
    Rubrics can be great tools to establish alibis for reviewers
    who fear criticizing works of others, because of cultural 
    values, self-image, or other factors.  For example, being asked to point
    out one part which could be done better, or identify errors
    will shift the blame from the reviewer who found the bugs
    to the instructor who provided the rubric. 
    }

@item{@bold{Rubrics for reviews of good solutions}:
    In at least one case of using IFPR in the classroom, students reported not
    knowing what to write when reviewing good
    solutions@~cite["politz-ct-iticse14"].
    A rubric could explicitly prompt for feedback
    even on good work (e.g. "What did you like about this submission?", "List
    one thing you would change, regardless of correctness."), so that students
    don't simply sign off on a solution as good enough without reflecting and
    providing some useful feedback.
}

@item{@bold{Rubrics for conduct}:
    Rubrics can guide students towards a professional and appropriate tone for
    giving feedback, and help frame negative feedback in a constructive way.
    For example, forcing a review to contain comments on the strengths of the
    submission under review can soften other criticism.  When appropriate,
    rubrics can guide students towards more constructive language---for
    example, "This could be done differently" vs. "This is wrong".
    }

@item{@bold{Rubrics for time management}:
    Open-ended review tasks don't make it clear how much time students should
    spend on them.  Just having a specific rubric can make it easier for a
    student to identify when they are done (and estimate the time themselves).
    A rubric could even specify the amount of time that a student should
    spend, and how much on each part of the assignment, to ensure that
    reviewing does not take up more time than intended.
    }
]

@bold{Evolution of and Variation Within Rubrics}
Evolving rubrics across a course or curriculum may offer a good
balance between initial scaffolding (for reviewers and authors) and
eventual opportunities for both groups to demonstrate critical
thinking skills.  One model would evolve rubrics from having fairly
targeted questions to asking broad questions: this model gradually
removes scaffolding.  Another form of evolution starts with concrete
questions (such as "do these tests look correct") and progresses to
questions on more abstract issues (such as "do these tests cover the space of
possible inputs") as students master more of the
subject material.

A variation on evolving rubrics would allow different students to work
with different review forms, depending on their ability as reviewers.
This comment arose from the working group members' experience as PC
members: members often found overly structured forms to be annoying,
feeling they interfered with how they wanted to convey issues with a
work.  However, they also noted that early on in their paper reviewing career,
they appreciated the rubrics' ability to get them past the initial blank form.

A different form of variation might pose more questions to reviewers
than are conveyed to authors.  This situation could make sense when
the review is used to assess the reviewer's understanding of a work,
or when too much information in a review might distract the author
from the critical information in a review.

@bold{Pros and Cons of Rubrics} 
Reviews contain information that can be used to learn about students'
understanding and evaluate student work.
Detailed and fixed rubrics can facilitate data mining and comparison between
reviews. For
automatic grading of reviews, for instance, fixed structures are clearly 
helpful. Inexperienced students may also benefit from structure when
aggregating the feedback of multiple reviews, for example,
understanding that two or more reviews give
contradictory advice. Two
students discussing reviews (that they are making or have
received) may be similarly helped by an imposed structure.
Statistics or live dashboard reporting in a tool that collects and distributes
reviews is also enabled by more structure.

The ability to lift reviews (or rubrics, if these can be
influenced by students) to the level of the class is another good
example of rubrics for communication. Students or experts might
see common problems which should be communicated to all, either by
sharing sufficiently general comments with the entire class or
even adding an entry to a rubric which brings attention to the issue
in subsequent reviews.

Rubrics provide starting points for discussing reviews in class,
and for helping students to talk about reviews as noted above. On
the downside, rubrics can cause students to focus too narrowly on only the
questions the review asks. Again, the structure
imposed should be guided by a close inspection of the goals of the
particular review: who is it for, what is the intended outcome, and how the
review's contents will be used.


@subsubsection{Forms of Reviews}

Reviews can take various forms, from written documents to verbal
feedback, from paragraphs to small comments associated with particular
fragments of prose or code, and from individual to group-wide
feedback.  For written reviews, the group noted the general
applicability of plain text, but noted that modern software tools
(such as Github and other graphical version-control tools) enable targeted
comments and conversations
between authors and reviewers, down to the line number in a particular
revision, which is more structure than a general, overall comment.

In some situations, non-text artifacts can be effective, just as not all
submissions need be code.  Code architecture diagrams can be critiqued and
marked up with freehand annotations, pictures of the state of running program
can be drawn, and even code patches can be an effective way to convey
comments.  This is one case in which the default technology that authors of
tools for in-flow peer review might choose could be limiting.

The Informa tool allows students to give live feedback on problems with
several interfaces that could also be useful for
review@~cite["hauswirth-informa"].  For example, during a Java program
comprehension task, students use a drawing tool to create a graphical
representation of the heap at particular program points.  Another example had
students highlight portions of code that exhibited certain behavior or had a
certain feature.  Both of these interfaces go beyond simple text or scalar
feedback, and can be used to provide richer information in reviews.

Face-to-face reviews are another form of review, whether solely between
students or moderated by TAs or instructors.  Moderation can make arguments
more constructive, guide discussion towards relevant points, and make a
face-to-face meeting less intimidating.  Moderated review moves the process
more towards a studio-like setting, and may be appropriate especially for
teaching students what is involved in a constructive code review process.
Hundhausen, Agrawal, and Agarwal discuss this kind of in-person review, dubbed
*pedagogical code review*, in early courses@~cite["hundhausen-pcr-toce13"].  In
pedagogical code review, a small group led by a moderator use a set of
predefined coding practice guidelines to guide a group review of student
programs.





@subsection[#:tag "s:meta-reviewing"]{Review Feedback and Meta-Reviewing}

Any use of peer-review must choose whether to include any grading or feedback
on the contents of reviews themselves.  We use the term @emph{meta-review} to
refer to any feedback on a review (because feedback can be considered a review
of a review).  Feedback can take many forms: the author who received a review
could report on whether the review was constructive or led to changes, course
staff could formally grade reviews and return comments to the reviewer, or
third parties could comment on the relative merits across a set of reviews.
Which model makes sense depends on factors including the learning objectives
for IFPR, features of peer-review software, and course logistics (such as
staff size relative to student population).

Much of the group's discussion around meta-reviewing applies to
peer-review in general, rather than only to IFPR.  The IFPR context is
mostly relevant when considering whether reviews are sufficiently
actionable to let students benefit from reviews to improve their own
work.  We describe both general design decisions around meta-reviews
and those particular to IFPR in this section.

@subsubsection["Types of Meta-Reviewing"]

There are several ways to structure the information in meta-reviews, and
provide useful feedback to reviewers.

Nelson and Schunn describe a rubric for evaluating peer feedback in writing
assignments, which includes criteria like the concreteness and actionability
of the review, and whether it was generally positive or
negative@~cite["nelson-feedback-rubric"].  Swan, Shen, and Hiltz study
assessment strategies for comments in online discussion forums used to discuss
class content@~cite["swan-online-assessment"].  Though the discussions are not
necessarily critiques of student work, they do have similar requirements for
relevance, accuracy, and usefulness a focused topic.

Another way to give feedback is by telling students about the correspondence
between their evaluation of a submission and other evaluations, be they from
experts, other students, or an automated process.  For example, the SWoRD tool
for peer review of writing tells student reviewers, on each criteria they
reviewed, how they did relative to the average of other students'
scores@~cite["cho-sword"].  An example of feedback that they show says ``Your
ratings were too nice for this set of papers.  Your average rating was 6.50
and the group average was 5.23.'' This hints to the student that they may have
missed something in their review.  This does run into issues of calibration
and opinion -- just because a student disagrees with the average, it doesn't
mean they are wrong!  They may have understood something the other reviewers
didn't, in which case comparing their review to an expert's, or to a trusted
automated process, may be more useful feedback.

In a related approach, in CaptainTeach programming assignments, half the time
students are assigned a known-good or known-bad solution to review,
implemented by the course staff@~cite["politz-ct-iticse14"].  They have a Likert
scale in their review to indicate whether they think the program or tests the
are reviewing is correct, and if they give a strong score to a known-bad
solution, or a weak score to a known-good solution, they get immediate
feedback telling them of the discrepancy.

According to Ramachandran and Gehringer@~cite["rg:auto-assess-rev-lsa"]
reviews consist of (1) summative, (2) problem detection, and (3) advisory
content.  Meta-reviews can report on each of these three types of contents,
each of which is valuable in its own way.  While summative contents can
reflect a reviewer's understanding, problem detection content directly helps a
student to identify opportunities for improvement, and advisory content points
out ways in which students might improve.  Meta-reviews can include
information on which parts of a review were constructive, and which led to
actual changes.  Meta-reviews written by authors of submissions can also
include rebuttals to aspects of a review: in IFPR, such rebuttals can arise
when students are debating the requirements of an exercise through the review
process (a healthy outcome relative to the goals of IFPR).  In the case of
rebuttals and follow-ups, this blurs the line between collaboration and
review, as students may end up coming to a shared understanding that may not
have occurred with a single review step.

The Expertiza peer review process contains an explicit review-of-review phase
for collaborative work@~cite["gehringer-expertiza-approach"], and a related
Expertiza tool attempts to give some more qualitative feedback automatically
by a naturaly language analysis of student
work@~cite["rg:auto-assess-rev-lsa"].  This automated tool uses an analysis of
natural language to give automated feedback about the tone and quality of
written feedback.

@subsubsection["Using Meta-Reviews"]

While one generally may prefer to eliminate low quality contents in reviews, 
in a pedagogical context also receiving some low quality review contents can be beneficial. 
While in traditional educational settings students may trust all the feedback they receive from the instructor, 
in IFPR students have to learn to assess the value of the reviews they receive. 
They will have to learn to triage review comments into those they will act upon and those they will ignore. 
Moreover, having a diversity of reviews, 
maybe even contradicting reviews, 
can be a starting point for valuable discussions in class.
The act of triaging reviews themselves can train reviewers to not submit "brain dumps" 
of everything that might possibly be wrong, 
but to provide valuable but concise reviews; the important metric is
actionability, not volume of feedback.

Instructors may seek to use meta-reviews to monitor the IFPR process.
Given the quicker turn-around times inherent to IFPR, such monitoring
benefits from tool support and structural elements of meta-reviews.
For example, asking students to rate the reviews they receive on a
simple Likert scale makes it easy for an instructor to focus on
potentially problematic reviews without undue burden on the students.
In some IFPR configurations, software tools that include automatic
grading could report partial information on whether student
performance improves following the review phase.  Such information
would be most useful for identifying cases in which poor work did not
improve, prompting the instructor to check on whether the author had
received useful and actionable advice through reviews.

Meta-reviewing incurs a cost. 
Whether or not meta-reviews are worth that cost depends on the learning goals: 
if teaching how to review is important, meta-reviews are essential; 
however if the learning goals focus on artifact production or performance, 
and if the reviewers are experienced, 
meta-reviews may be less essential. 
An alternative to providing meta-reviews for each review is to provide a few example reviews and their meta-reviews. 
To not tempt students to simply reuse the best example review comments, 
these exemplar reviews can come from an assignment that is different from the current assignment.

A live demonstration of how
to do a code review is a form of scaffolding on the process-level,
but does drive content as specifically as rubrics. Regardless of
how reviewing is introduced and scaffolded, it is important to
allot time to deal with misconceptions on how to create a review
as part of the course design. 

@section[#:tag "s:issues"]{Parameters and Issues}

This section discusses issues in instantiating @IFPR in different course
contexts relative to the process discussed in @secref["s:process"].

@subsection{Grading IFPR Assignments}

Educators have a new set of questions to answer about evaluating work done in
the IFPR style, and giving summative feedback along with the peer review
feedback.

There are a few issues to consider:

@itemlist[
@item{
Since there are potentially multiple submissions of the same or similar
artifact, and students see examples of one another's work along the way, there
is doubt about the provenance the work in the final submission, raising concerns about
plagiarism.
}

@item{There can be many motivations for students to take the time to perform
quality reviews for one another.  While grading reviews provides an obvious
achievement-based motivation, there are others that might be more powerful: if
simple philanthropy drives students to help one another, there may be no need
for another motivator.  This can interact with, for example, grading on a
curve, because it can be:

@itemlist[
@item{Demotivation --- it's not good to help others, because it can push them past you}
@item{Unmotivating --- no reason to respond to feedback/work on reflection, because you can only do so well on the curve}
@item{Destruction --- students can sabotage one another with bad feedback}
]
}

@item{
Another grading interaction concerns automatic grading, an
increasingly common practice in Computer Science courses.  
When assignment steps can be graded automatically, how much feedback
should go to students and/or reviewers alongside the peer-written
reviews?  Giving auto-grade results could lead to reviewers putting in
less effort (thus masking situations in which the auto-grading missed
something important).
}
]

@subsubsection{Grading Reviews}

Besides providing informative meta-reviews, 
some educators might also wish to grade reviews. 
Such grades for reviews might simply be based on whether or not a review was submitted, 
or whether a review was submitted in a timely manner, 
or they may be based on any of the criteria mentioned above. 
Of our case studies, six (@study-refs["clarke-asgn-2" "clear-asgn-1"
"fisler-asgn-2" "politz-asgn-1" "wrigstad-asgn-1" "wrigstad-asgn-2"])
explicitly tie reviews to the course or assignment grade in some form.
Similarly, meta-reviews could be graded.

Class size is clearly a factor here.  If someone wants to use
peer-review to help scale human feedback in large courses, then
giving expert feedback on reviewing might not be feasible.  In situations
where an expert evaluation of the assignment is available (whether through
auto-grading or by human TA), it should be possible to automate a
meta-review that tells a student something about the quality of work they
reviewed.  So, for instance, if a student indicates in a
Likert scale that they "strongly agree" that a solution is correct, but the
grade for the assignment they reviewed is low, the automated metareview can indicate that
this review likely mis-evaluated the work under review.

At the extreme end of grading reviews, one option could make most of a
student's grade be determined by the reviews that they wrote, rather than the
code they submitted.  The idea here is that the student's reviews reflect
their understanding of the assignment. As a result TAs would spend their time
on meta-reviews rather than grading code, focusing expert attention where it
may be most valuable.

Another way to tie students' grades to the reviewing they did is to make
students' grades depend on the performance of the students they review: the
reviewer gets points for the final score or improvement in score of the
reviewee's submission.  This motivates reviewers, but the rewards may be
infrequent and depend more on the work ethic of the reviewee than the actual
quality of the review.  It may be possible to use this as a bonus system,
rather than as a formal part of the grade, to reduce unfairness and variance
but encourage good reviewing extrinsically.

To read:

Klemmer and others on accuracy/rubrics: @~cite["kwl...:peer-self-assess-mooc"]


@subsection[#:tag "s:anon"]{Anonymity}

@md-section["sections/anonymity.md"]


@subsection[#:tag "s:experts"]{The Role of Experts}

Comparing students to experts in writing reviews: @url{http://www.sciencedirect.com/science/article/pii/S0959475209000747}
[Currently DOES NOT LOAD, so not moved into bib file]

@md-section["sections/expert-roles.md"]


@subsection[#:tag "s:nonmajors"]{Does it make sense for non-majors?}

@md-section["sections/non-majors.md"]

Related work:
@~cite["Papadopoulos:2012:IPR:2215076.2215100"]


@subsection[#:tag "s:plagiarism"]{Plagiarism and Gaming the Assignment}

IFPR, like many course and assignment structures, requires careful mechanism
design to ensure that students aren't incentivized towards detrimental
behavior that lets them get a good grade at the cost of their (or others')
education.

One of the most immediately problems with IFPR is that students necessarily
are shown one another's work while in the middle of an assignment -- it is the
definition of the technique that this happens.  Since the final submission
happens after students have been exposed to other students' work, the IFPR
educator immediately confronts the problem of determining how to evaluate the
final submission.

At the extreme, a student could submit an empty initial submission, copy what
he sees during the reviewing phase, and submit the copied solution as their
final solution.  In less extreme cases, students may copy all or part of
another solution into their own after submitting an initial first try that
they become convinced is incorrect.  There are a number of course and grading
design decisions that can affect to what degree copying is a problem.

@subsubsection{Variation in Assignments}

One major factor in whether copying behavior is even a problem is how similar
students' submissions are expected to be.  In many programming courses,
students implement to the exact same algorithmic specification, and other than
coding style issues, one implementation is just as good as another.  This is
in contrast to other domains where peer review is often used, like creative or
critical writing, in which students often write on different topics or choose
different positions to represent on the same topic.

One solution is then to provide different variants of a programming
problem to different students, an approach taken by
Zeller@~cite["zeller-read-review-00"], in which each student gets a variation
on a theme, to avoid students reviewing another who is working on exactly the
same problem.  Indeed, it is often possible to generate large numbers of
different problems automatically from a specification, as Gulwani et al. have done for
algebra problems and more@~cite["gulwani-algebra-problems"
"gulwani-geometry-problems"].

A drawback of variation in assignments is that it weakens one of the benefits
of IFPR -- that students review the same problem they just saw!  Especially
for beginning students, where program comprehension skills are still being
learned, one goal of IFPR is to lessen the cognitive load of the comprehension
task by having the student review code for a problem they already understand.
If they have to internalize an additional problem description along with new
code, this puts significantly more overhead into the reviewing process.

Depending on the learning goals, it may be good for the reviewer to learn to
incorporate ideas from different solutions into their own, since it requires a
more abstract understanding of the techniques.  For earlier students, it may
be enough of a challenge to recognize a good solution for the same problem and
apply it to their own solution.  So depending on the use case, presenting a
reviewer with solutions to the same or different problems may be effective.

@subsubsection{Weighted Submission Grading}

We believe that there is value in having students copy parts of other
submissions that they see in order to improve their own work.  It happens all
the time in professional software development, and the act of recognizing a
good solution demonstrates understanding that is far beyond blind plagiarism.
So we want students to take things from the examples they see and demonstrate
that they learned from them -- there's also no guarantee that what they are
seeing is correct, so blindly copying can hurt!

However, wholesale copying should be discouraged, where a student submits an
empty file and then simply copies the best of what they see.  In order to
mitigate this, Politz et al. grade IFPR assignments by assigning heavier
weights to initial submissions than to post-review submissions, so an initial
program submission counts for 75% of the grade.  Students can still improve
the 25%-weighted part of their score based on review feedback and copying
others' solutions, but they can also hurt their score if they make incorrect
changes.  Different weightings put different emphasis on the importance of
review -- having the post-review score count for more might be acceptable in
some classroom settings, and ultimately comes down to a choice about student
maturity, class culture, and other course-specific factors.

@subsubsection{Alternative or Supplemental Grading}

Another solution to the grading problem is to supplement assignment grading
with other techniques that cannot be copied, which works in many settings
where plagiarism could be a potential problem.  For example, in an in-person
code review of a student's solution, an instructor can quickly ascertain
whether or not the student has simply copied something or actually understands
the code they have submitted.  This can be done by, for example, asking the
student to change their program to match a new specification, or asking them
to understand some change to their submitted code.

@subsection{Mitigating the Costs}

@md-section["sections/mitigating-costs.md"]

@subsection{Bringing Students Along}

One challenge of peer review in general lies in getting students to
value the contributions of their peers.  Peer evaluations contradict
the model students are used to of the instructor as the trusted,
knowledgeable authority.  In addition, many students aren't initially
comfortable acting as reviewers, so a desire for harmony may hinder
their ability to produce effective reviews at first.  These two
dimensions--taking the reviews seriously and taking act of reviewing
seriously--differ in force and mitigations.

When students are in the role of reviewers, instructors may need to
consider how to balance anonymity in reviewing with the need to engage
students in the professional practice of reviewing.  When dealing with
students from non-western cultures, explicit reminders that review is
part of working in western culture.

When students are in the role of receiving reviews, instructors should
require students to demonstrate engagement with the reviews.  Asking
students to indicate how they used reviews in revising their work is
one option.  Students may need explicit instructions on how to read
reviews; this might also help them cope with criticisms.  For some
students, peer review may be their first time getting negative
feedback; instructors should make response to review a positive
activity.  For students whose work was strong and did not yield
actionable reviews, an instructor could ask ``what have you learned
from looking at others' solutions?'' Perhaps this is something you do
on a couple of assignments, to satisfy the goal of helping them learn
to self-reflect.
 
Specific suggestions for students included:

@itemlist[
@item{When you get a criticism, go back to other reviews -- are you
getting the same mistake over and over?  }

@item{Have a cooling-off period if you get negative reviews -- you may
view them more positively with a little passage of time}

@item{Do you see a contradiction in your reviews.  }

@item{How will you avoid making these mistakes again in the future?
look at the review, break out the actionable items, prioritize}

@item{Remind them that the goal of this is to improve the work --- be
hard on the issue, soft on the people}

]

If students remain skeptical of the value of peer-review, a mid-course
survey on the value of reviewing might help convey the experiences of
others.  This also sets a culture of peer-review as a collective effort.

@section{Evaluation and Analytics for IFPR}

@md-section["sections/evaluation-analytics.md"]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Related Code Review Practices}

@subsection[#:tag "s:pairprog"]{Pair Programming and IFPR}

@md-section["sections/pair-programming.md"]

@subsection{Industrial Peer-Review Practice}

Code review is an essential component of industrial
software-development practice.  Industrial peer review is inherently
in-flow, as reviews are conducted on a regular basis during
development -- it would be odd indeed to only perform code review after a product
had shipped to customers!  The industrial product-development lifecycle is longer
than that in many courses, but best practices in industrial peer
review are still useful context for this report.


@subsubsection{Motivations for Industrial Code Review}

Industrial code reviews differ in motivation from pedagogic code reviews.  The
goal is often to reduce the defect rate before releasing software or
committing to a design.  This is the primary measure of an effective review
process in Fagan's seminal work@~cite["fagan-code-inspection"], in followup
work to it@~cite["votta-meetings"], and also in some modern
surveys tied to large case studies@~cite["smartbear-code-review"].  The goals
of in-flow peer review in pedagogic settings are much broader than just
finding bugs in peers' code, though finding problems is certainly one worthy
cause for review.

However, in one modern study that studies attitudes about code review in both
developers and managers at Microsoft, researchers found that defect finding,
while important, was only one of several top motivations developers saw for
review@~cite["bacchelli-modern-code-review"].  Also scoring high in developer
surveys as motivations for code review are general code improvement,
suggesting and finding alternative solutions, knowledge transfer, and team
awareness.  While performing reviews, developers indicated specific cases where
they learned about a new API that they could use in their own code, or
providing links to the code author with documentation of other alternatives,
suggesting that these activities do indeed occur.

Activites like knowledge transfer and dissemination of ideas are certainly
goals of in-flow peer review, and in-flow strategies should consider ways to
foster them.  Bachelli and Bird@~cite["bacchelli-modern-code-review"] note
that these metrics are harder to measure than defect rate, but observe them
coming up spontaneously in interviews and in observations of reviewers.

@subsubsection{Staged Code Inspections}

Fagan's seminal work on code inspections in an industrial
setting@~cite["fagan-code-inspection"] finds that putting inspections at
carefully-delineated points throughout a products lifecycle can save time by
fixing faults earlier, before other work builds on the buggy code.  In Fagan's
experiments, there are three inspections -- one after an initial design phase,
one after initial coding, and one after unit testing and before system-wide
testing.  Experiments show that maximal productivity is reached by including
only the first two inspection steps due to the high cost in developer time
relative to the time saved by early detection, but that using the first two
steps increases programmer productivity by 23%, according to their metrics.

This result mirrors our intuitions about the value of staging assignments for
review at points that are useful for catching and fixing misconceptions about
the assignment.  Our primary goal is not simply to improve the programming
output of students, however -- We care about what they learn from seeing other
examples, teaching them to effectively review others' code, and more.  Still,
it is useful to consider that the in-flow experience is similar to effective
industry practices, and note that professional developers benefit from the
staging process.

@subsubsection{Meetings vs. Asynchronous Code Review}

Fagan's original results are for @emph{formal code
inspections}@~cite["fagan-code-inspection"], which consist of a
meeting of several developers (including the orginal author), conducted with
prior preparation and with a separate @emph{reader}, separate from the author,
who presents the work.  Defects' cause and detection are documented in detail,
which acts as a sort of ``rubric'' for the code review.

While formal code inspections demonstrably find valuable defects, it is not
clear that the organization of a meeting is required in order to have a
comparable effect.  Votta studied the necessity of meetings for code
inspection, and found that the majority of defects---over 90%---were found in
the @emph{preparation} for the meeting, rather than in the meeting
itself@~cite["votta-meetings"].
Votta concludes that much of the benefit of code review can be had without the
overhead of scheduling in-person meetings.

There is further research on this debate, but the only clear conclusion is
that significant benefits of review remain even without in-person review.  In
a pedagogic setting, in-person reviews may serve other goals, like training
students to review, encouraging productive feedback, and supporting the social
aspects of review.  However, industry research suggests that the overhead of
scheduling and holding meetings isn't a prerequisite of effective reviews in
professional settings.

@subsubsection{What and How to Review}

A large industrial case study on code review@~cite["smartbear-code-review"],
which also documents a survey of code review in industry (including a longer
discussion of formal vs. lightweight review), identifies guidelines for
effective reviewing practices.  By measuring defect rates found against the
number of lines of code under review and the length of the review session,
their study recommends ``the single best piece of advice we can give is 
to review between 100 and 300 lines of code at a time and spend 30-60 minutes
to review it.''

@;{five different
types of industrial code review:

@itemize{
  
  @item{@emph{Formal reviews}, which }

  @item{@emph{Over-the-shoulder reviews}, which are informal, ad hoc reviews
  conducted in-person over the author's workstation.}

  @item{@emph{E-mail pass-around reviews}, in which the files are gathered up
  and sent around to colleagues for informal review.}

  @item{@emph{Tool-assisted reviews}, which provides automated assistance in
  gathering artifacts for review, and centralizes the review process itself
  in order to keep track of who is reviewing what, which files have been
  reviewed and which are outstanding in the review process, and more.}

  @item{@emph{Pair programming}, which we distinguish from in-flow peer
  review [REF], but which does provide a kind of immediate, constant review.}

}}


@section{Additional Related Work}

@subsection{Intrinsic vs. Extrinsic Motivation}

The group frequently considered arguments from Kohn's ``Punished by
Rewards'' [CITE], which argues that praise and rewards (such as grades)
are ineffective and detrimental motivators.  Reasons for this include

1) rewards punish
2) rewards rupture relationships
3) rewards ignore reasons
4) rewards discourage risk-taking
5) rewards reduce intrinsic motivation.

Proposed solutions generally have three components: 
1) collaboration - enable the exchange of talent and resources, foster a sense of belonging
2) content - let persons do something that is ``meaningful'' to them
3) choice - don't try to ``manipulate'' the person

In the context of @IFPR, peer reviews can either serve as ``rewards''
(summative assessment in the form of scores/grades) or as constructive
feedback (formative assessment). [FILL]

@subsection{Metacognitive Reflection}

One goal of in-flow review is to encourage reflection @emph{while in the
middle of an assignment}.  Meta-cognitive reflection of techniques and
approaches has been studied as an important part of the learning process.
Indeed, it has been indicated that one difference between experts in program
comprehension and novices is the focus on
metacognition@~cite["etelapelto-metacognition-comprehension"].  Others in
different contexts have found effective reviewing and prompting strategies for
encouraging reflection that @IFPR can learn from.

Palinscar and Brown study @emph{reciprocal teaching}, in which a teacher
alternates with a student in a dialog that prompts for reflective activities,
like generating summaries or clarifying confusing
elements@~cite["palinscar-peer-teaching"].  They used reciprocal teaching with
seventh graders struggling with reading comprehension, with an emphasis on
letting students take over as the session progresses.  The entire point of the
exercise is to encourage reflective activities in students, and similar
prompts---for summarization or clarification---may lead students in @IFPR
contexts to give reviews that cause more reflection, or more directly reflect
themselves.

Davis and Linn@~cite["davis-reflection-prompts"] use explicit self-review
prompts at different stages of assignments given to eighth graders.  For
example, in one assignment, students had to perform a repeated task (designing
clothing and environments to help cold-blooded aliens survive).  They compared
responses to direct prompts submitted along with a design, like ``Our design
will work well because...'', to prompts designed to encourage reflection after
the fact---``Our design could be better if we...''--- and plan-ahead prompts
designed to cause reflection during the assignment---``In thinking about doing
our design, we need to think about...'' Their sample size was small, and they
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
being meticulous in analyzing their results, and more.  In addition, the
environment contains simple autonomous agents, called advisors, that give
automated feedback and suggestions to students.  They are also given the
opportunity to assess the work of other students in a few ways: They can
simply rate the contents, or they can make specific suggestions, like telling
a student that they should pay attention to a particular advisor.  Finally,
the course is complemented with role-playing activites where students take on
the role of advisors, and give specific feedback − the advisors have specific
flavors of feedback; an example in the paper is that a student acting as the
```Skeptic' might [be asked to] say `I disagree' or `Prove it''' to another
student's submission.

In this report, we have focused on @IFPR for students that are mainly older
than those in these studies, and this younger group is often addressed more
directly by studies about explicit metacognition review prompts.  Other
studies in higher education address discussion forums, journals and
portfolios, and more to encourage self-reflection, but these ideas are less
directly applicable to in-flow peer review.

[FILL] discussion forums worth talking about?
Discussion here needs to cover things like:
@itemlist[
@item{What kinds of questions encourage reflection?}
]

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

Discussion here needs to cover things like :
@itemlist[
@item{How many examples does one need to see before learning occurs?}
@item{How similar do the examples need to be?}
@item{What scaffolding (i.e., review questions) foster learning from examples?}
]

In PeerWise@~cite["denny-peerwise08"], students created and reviewed one
anothers' multiple-choice questions, which has elements both of learning by
example and of review.

@subsection{Peer Instruction}

Peer Instruction (PI), which is a specific form of student centered
pedagogy@~cite["mazur-peer-instr-book"], has been shown to be a promising way for improve student
performance@~cite["crouch-mazur-peer-instr-10-years"] and
engagement@~cite["simon-peer-instruction-icer13"] both in introductory
courses@~cite["crouch-mazur-peer-instr-10-years"] and upper-division
courses@~cite["lee-peer-instr-upper-level-13"]. Peer instruction, as
defined by Crouch 
et al.@~cite["crouch-mazur-peer-instr-10-years"], focuses on
engaging students in activities that require them to apply the core
concepts under study and to explain these concepts to their
peers. Concretely, a class taught using PI principles can consist of
short presentations, each of which focuses on a particular core
concept and is tested by presenting students a conceptual question,
which the students first solve individually and then discuss in
groups. The PI pedagogies link with the concepts of blended learning
and flipped classroom [Ville 4] in that PI requires students to study
preparatory material before attending the class.

Related to our undertaking, the most interesting component of PI is the
student peer discussions that are undertaken after presentation of each
concept. This differs from (in-flow) peer review in that there isn't an
submission in question that students are trying to improve.  The exercises are
a vehicle for discussion, and the discussion is the end goal, not producing a
quality submission.  Neither of these goals is necessarily more helpful than
the other, but depending on expected outcomes, one can be more effective.  In
programming and writing disciplines, for example, one explicit goal is to
train students to produce quality programs and written work.  In mathematics
or physics, it may be more important that students understand concepts and
know how and where to apply them, rather than producing any particular
artifact.

@subsection{Comprehending Program Structure}

Program comprehension is at the same time a prerequisite and a learning goal
of in-flow peer review of programming assignments.  Students need some ability
to read code in order to provide a meaningful review to one another, but at
the same time, IFPR can lessen the cognitive burden of comprehension by having
students review problems that are conceptually close (or identical) to
something the reader has just encountered.  The degree to which it tends
toward one direction or another is a function of the experience level of the
students and the goals of the particular course.

In addition, for in-flow assignments centered around programming, one goal of
peer-review is to help students reflect on their own code structure.
There is a rich literature on program comprehension (particularly
contrasting experts and novices), but much of that focuses on
understanding @italic{behavior} of a new program [CITE].  In the in-flow
peer-review context, students already know the problem and (roughly)
what the program is supposed to do.  Reading others' code therefore
has different goals: notably, to understand the structure that someone
else brought to the problem and to contrast that with one's own.  In addition,
rather than trying to construct a meaning for a new program from scratch,
students face the less burdensome task of asking if the program
@emph{matches} an existing specification.

Studies on program comphrehension comparing experts and novices have found
that experts engage in more metacognitive
behavior@~cite["etelapelto-metacognition-comprehension"], so the metacognitive
context of review may put students in the right frame of mind to understand
programs in the first place.  Other work on program comprehenseion suggests
that the process has a lot to do with understanding the high-level plan of a
program [CITE].  Since in the in-flow context students have at least
constructed @emph{a} plan of their own for the same or a similar problem, they
may at least be able to determine if the solution they are viewing matches
their plan, or is doing something different.

The degree to which IFPR helps with 

@relworkfill{Discuss related work around comprehending code
organization}

Related work discussion should address:
@itemlist[
@item{How do people uncover the structure of a program?}
]

To read:


The WG on program comprehension@~cite["Schulte:2010:IPC:1971681.1971687"]

(What implications does this have for the experience level at which
students can meaningfully engage in ifpr?  They need certain maturity
to chunk, but chunking isn't necessarily needed on small programs.)

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@subsection{Increasing Socialization in Programming-Oriented Courses}

@relworkfill{Work on creating socialization}

@itemlist[
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

Specifically about communication and the social climate in CS@~cite["Garvin-Doxas:2004:CCS:1060071.1060073"]

Peer mentoring: A Mentor Program in CS1.  @url{http://dl.acm.org/citation.cfm?id=544420}


@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@subsection{Existing Uses of In-flow Peer Review}

Others have used strategies for peer review that fall under the umbrella of
in-flow peer review, even though they did not go by that name.

@fill{Re-UTF encode Sondergaard}

For example, in the implementation of a multi-stage compiler, students in
Sondergaard's course review one another's work between stages
@~cite{sondergaard-peer-review-compilers09}.  The evaluation in that work was
only in the form of surveys after the assignment, but shows generally positive
attitudes from students indicating that they felt the review had helped.

Expertiza@~cite["gehringer-expertiza-approach"] is discussed in @ref{relwork
for review-of-review}, and is used for large, multi-stage collaborative
projects in which students build and review smaller components that build up
the whole.  This includes assessment and review of the reviews themselves as
an explicit motivator for performing the review.  It is notable that in
Expertiza, students often review other students' components of a larger whole,
which can be a task that the reviewer didn't complete him or herself.  In many
of our case studies of in-flow review, students review an instance of the
@emph{same} work that they just did themselves @fill{check that this is
accurate after going through the case studies}.

[INSERT CaptainTeach]

[INSERT Informa]

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

[FILL]

[DISCUSS that there is potential to go overboard with all of the
suggestions here -- about picking right point in space.]

@(generate-bib)

@include-section["case-studies.scrbl"]
