#lang scribble/base

@(require "bib.rkt"
          "helpers.rkt")

@title{Working Group Report on In-Flow Peer Review}

@section{Members}

All of our names go in here

@section{Introduction}

What is in-flow peer reviewing?

Peer-review has been employed for various reasons in Computer Science
courses.  This is a cite to Topping@~cite["topping-peer-review98"],
just to test the bibtex framework.  @fill{say more}

This working group explored a particular variant of peer-review called
@italic{in-flow peer review} @~cite["politz-ct-iticse14"].  In this
model, peer review occurs while an assignment is in progress, before
the student submits his work for final grading by the course staff.
Reviewing in-flow stands to benefit students in various ways: it can
flag misunderstandings of problem specifications, help students
confront alternative design decisions early on, and help teach
students what ideas are worth borrowing from existing solutions.

In giving students access to the work of others during an assignment
period, in-flow reviewing changes the incentives for students to
engage in peer review; this in turn potentially impacts their
motivation with a review process, both as givers and receivers of
reviews.  In-flow reviewing also emphasizes @italic{comparative}
examination (of structure, tests, etc) against a student's own work.
These seemingly subtle shifts could have interesting implications for
how instructors employ peer review in courses.

Several challenges arise with this model, including figuring out how
to decompose assignments for meaningful reviews, how to prevent
students from gaming the process to avoid doing their own work, and
how to help students not be led astray by weak or inaccurate reviews.

This report summarizes activities of a working group around the
promises and pitfalls of in-flow peer-review in computer science
classes.  The group members represented several countries and taught
various courses at various levels (though the majority taught courses
related to programming, programming languages, or various aspects of
software development).  Prior to the group's in-person meeting, each
group member created two assignments for in-flow peer-review.  These
case studies, which appear in the appendix (Section
@secref["s:case-studies"]), formed the basis of many 
of our discussions.


Within the various case studies from the working group, students were
asked to produce code, produce test-suites, produce security-testing
plans, plan large projects, @fill{}.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Background and Context}

In-flow peer review targets various student-oriented learning
objectives and instructor-facing pedagogic goals.  It is framed by
extensive industrial practice, as well as a significant body of prior
work on student learning in computing.  This section identifies
various contextual factors and summarizes prior work around each one.
These will set the stage for later discussion of the case studies
developed by working group members and the issues that arise around
in-flow peer review.

@subsection{Learning Objectives}

In-flow peer review arises from a desire to help students learn review
skills common to software-development practice, while simultaneously
drawing on reviews to improve their understanding and performance on
ongoing assignments.  The process of in-flow peer review asks students
(implicitly or explicitly) to perform several tasks, including:

@itemlist[
@item{Assess whether another's work satisfies problem requirements}
@item{Provide actionable feedback to others}
@item{Extract high-level design choices from anothers' work}
@item{Compare others' high-level design choices and practices to their own}
@item{Decide whether to adopt or ignore particular feedback}
]

In the context of working on these tasks, peer-review has other
potential benefits, including

@itemlist[
@item{Helping students gain confidence and self-efficacy in their
work}
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

The rest of this section presents background and related work
pertinent to these tasks, with an emphasis on the in-flow context when
appropriate.  Some related work is specific to particular kinds of
artifacts, while other work would apply to any reviewed artifact.

@subsubsection{Helping Students Be Successful Reviewers}

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

@subsubsection{Learning By Example}

@relworkfill{Summarize related work on learning by example}

Discussion here needs to cover things like :
@itemlist[
@item{How many examples does one need to see before learning occurs?}
@item{How similar do the examples need to be?}
@item{What scaffolding (i.e., review questions) foster learning from examples?}
]

To read:

Klemmer and others: @url{http://hci.stanford.edu/publications/2012/RepeatedExamplesCogSci2012/RepeatedExamplesCogSci2012.pdf}

In PeerWise, students created and reviewed one anothers' multiple-choice
questions, which has elements both of learning by example and of review:
@url{http://dl.acm.org.revproxy.brown.edu/citation.cfm?id=1404526&CFID=472720597&CFTOKEN=32164599}

@subsubsection{Meta-cognitive Reflection}

@relworkfill{Summarize related work on meta-cognitive reflection}

Discussion here needs to cover things like :
@itemlist[
@item{What kinds of questions encourage reflection?}
]

@subsubsection{Shifting from Extrinsic to Intrinsic Motivation}

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

Matthias Hauswirth notes:

I just started reading "Punished by Rewards" by Alfie Kohn. Really
interesting deconstruction of "pop behaviorism", targeting three
contexts: workplace, parenting, and education. [...] peer reviews can
either serve as "rewards" (summative assessment in the form of
scores/grades) or as constructive feedback (formative assessment). It
might make sense to discuss the latter at the workshop. 

@subsubsection{Comprehending Program Structure}

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

@subsection{Additional Pedagogic Rationale}

Peer review in general has several pedagogic motivations beyond the
student-oriented learning objectives of the previous section.  These
include: 

@itemlist[
@item{Engaging students more in their own learning}
@item{Improving students' communication skills}
@item{Increasing social interaction, thus making programming a more
social activity}
@item{Providing human feedback more scalably than with only expert
assessment}
]

The in-flow context has additional pedagogic motivations:

@itemlist[
@item{Helping students improve their performance on an open assignment}
@item{Re-examining plagiarism issues by moving the problem}
]

The rest of this section describes frameworks and ideas around these
pedagogic goals.  Some of these issues leave significant open
questions in the design of in-flow peer review experiences; we discuss
those issues more extensively later in the report.

@subsubsection{Engaging Students in Learning}

@relworkfill{Summarize work on Contributing Student Pedagogy}

See ITiCSE WG 2008

@subsubsection{Providing Feedback on Reviews}

@relworkfill{Summarize work on review feedback}

@itemlist[
@item{What kind of feedback is useful?}
@item{Do experts need to provide the feedback?}
]

@subsubsection{Increasing Socialization in Programming-Oriented Courses}

@relworkfill{Work on creating socialization}

@itemlist[
@item{Pair Programming}
@item{Computer-mediated communication in collaborative educational settings (see ITiCSE WG 1997)}
@item{Peer mentoring (across different class groups, but still the goal is socializing)}
]

To read:

Specifically about communication and the social climate in CS: @url{http://dl.acm.org/citation.cfm?id=1060073}

By the same authors, thoughts on using collaboration/peer learning to mitigate
defensive social climates:  @url{http://dl.acm.org/citation.cfm?id=1047482}

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

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Case Studies in In-Flow Peer Review}

In here, summarize the task we gave everyone prior to the meeting.
Refer to appendix for the details.  

Produce a table summarizing the key factors/features of the various
studies: nature of artifact, grade level, decomposition, interesting
ideas, etc. @fill{Create table}

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Challenges and Issues}

What are the logistics challenges identified by the WG?

@subsection{Plagiarism}

@subsection{Avoiding Gaming the Assignment}

@subsection{Motivating Students}

@subsection{Finding the Sweet Spot in how much to structure assignments}

@subsection{Providing Students Feedback on Reviewing}

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Assessment of Student Work}

@subsection{Designing review rubrics}

@subsection{Designing feedback forms}

@subsection{How and whether to assess reviews}

Class size is clearly a factor here.  If someone wants to use
peer-review to help provide human feedback in large courses, then
giving expert feedback on reviewing might not be feasible.  Are there
ways to give some feedback on reviews in a lightweight manner?

@subsection{Impact of reviews on reviewee's grade}

@subsection{Accounting for the impact of seeing other students' work mid-assignment}

@subsection{Relating auto-grading and in-flow peer review}

When assignment steps can be graded automatically, how much feedback
should go to students and/or reviewers alongside the peer-written
reviews?  Giving auto-grade results could lead to reviewers putting in
less effort (thus masking situations in which the auto-grading missed
something important).

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Options for Decomposing Problems for In-Flow Peer Review}

Much of this will be collated from the initial assignments we proposed.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

@section{Miscellaneous Thoughts and Ideas}

Proposal: way to improve giving of feedback is to tie your grade to
that of the person you review

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Conclusion}

@(generate-bib)

@section[#:tag "s:case-studies"]{Appendix --- Case Studies}


