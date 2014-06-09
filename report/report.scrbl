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



@subsection{Assumptions}

Our discussion is framed by an assumption that students want to get as
many points as possible for their work, within reasonable bounds on
time and effort.  While some students are motivated simply by learning
more and improving their skills, we assume that the potential to
impact grades incentivizes students to engage more with in-flow
feedback than with post-submission feedback.  Whether reviews
themselves need to be graded is a separate question, which we discuss
in this report.

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Pedagogic Rationale}

Peer review in general (not just in-flow review) has several pedagogic
motivations:

@itemlist[
@item{Engage students more in learning}
@item{Improve students' communication skills}
@item{Increasing social interaction, thus making programming a more
social activity}
@item{Provide human feedback more scalably than expert assessment}
]

The in-flow context has additional pedagogic motivations:

@itemlist[
@item{Helping students improve their performance on an open assignment}
@item{Re-examining plagiarism issues by moving the problem}
]

Several surveys and papers provide an overview of the peer-reivew
literature.  We provide a light overview of general trends here,
focusing on efforts on the features that are more unique to in-flow.

Can it fill a void in some curricula/assignments, causing kinds of learning
that wouldn't happen otherwise (writing skills, critical thinking skills)?

@subsection{Engaging Students in Learning}

@relworkfill{Summarize work on Contributing Student Pedagogy}

See ITiCSE WG 2008

@subsection{Encouraging Self-Reflection}

@relworkfill{Summarize work on getting students to reflect on their work}

Naturally, the object of the reflection influences techniques for
effective reflection.  We will come back to that elsewhere in the report.

@subsection{Shifting from Extrinsic to Intrinsic Motivation}

In-flow peer review assumes that giving students feedback on their
work while it is in progress (i.e., while they can still impact
grades) will encourage them to take more from the reviews (from the
recipient perspective).  Thus, in-flow is trying to affect a shift
from the extrinsic motivation of "write this review for a grade" to
the intrinstic motivation of "engage in this process so my own grade
gets better" (though note that the extrinsic/intrinsic shift here is
happening in two different roles -- review author and review recipient
-- have to sort that out).

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

@section{Learning Objectives}

The process of in-flow peer review asks students (implicitly or
explicitly) to perform several tasks, including:

@itemlist[
@item{Assess whether another's work satisfies problem requirements}
@item{Extract high-level design choices from anothers' work}
@item{Compare others' high-level design choices to their own}
@item{Decide whether to adopt or ignore particular feedback}
@item{Provide actionable feedback to others}
]

The first and last of these tasks arise in all forms of peer-review;
the rest are more specific to in-flow review (or other models in which
students get to revise their work based on feedback).

The specific nature of these tasks changes depending on the artifact
under evaluation.  For example, evaluating a program that implements a
particular algorithm requires different techniques than evaluating a
plan for executing a large software project.

The reviewing rubrics needed for these tasks can differ widely.
Rubrics for assessing whether work satisfies requirements, for
example, might give students a list of requirements to examine.
Rubrics for contrasting with another student's design choices need to
ask more abstract questions about the structure of a problem
solution. 

Some of the related work around student learning through peer-review
is independent of the artifact under evaluation, while others arise
only with particular artifacts.  The rest of this section explore
related work that arises in both situations.

@subsection{Learning By Example}

@relworkfill{Summarize related work on learning by example}

Discussion here needs to cover things like :
@itemlist[
@item{How many examples does one need to see before learning occurs?}
@item{How similar do the examples need to be?}
@item{What scaffolding (i.e., review questions) foster learning from examples?}
]

@subsection{Meta-cognitive Reflection}

@subsection{Intrinsic Motivation}

By enabling reviews to impact grades, in-flow peer review shifts
students' motivation for engaging in the process.  

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

(What implications does this have for the experience level at which
students can meaningfully engage in ifpr?  They need certain maturity
to chunk, but chunking isn't necessarily needed on small programs.)

@subsection{Misc older material to work in}

In-flow changes the motivation from being purely extrisnic (eg, "this
will be graded") to intrinsic -- this does not necessarily improve the
quality of feedback, but it should at least improve the desire to
comprehend (and some students will realize that providing good
feedback forces even better comprehension).

Potential learning goals for in-flow peer-review include:

@itemlist[
@item{Learning how to read and comprehend submissions by others}
@item{Learning how to compare the behavior of different programs}
@item{Improve students' appreciation of the benefits of
structure/documentation of code
  -- both by getting poor reviews, and by seeing the mess of others}
@item{Improve students' ability to test code}
@item{Forcing students to reflect on (their own) design choices}
@item{Learning new programming techniques by example}
@item{Improvement in confidence and self-efficacy in your work}
@item{Learning how to evaluate feedback
  -- this is a difference between in-flow and typical homework grading}
]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Challenges and Issues}

What are the logistics challenges identified by the WG?

@subsection{Plagiarism}

@subsection{Avoiding Gaming the Assignment}

@subsection{Motivating Students}

Matthias Hauswirth notes:

I just started reading "Punished by Rewards" by Alfie Kohn. Really interesting deconstruction of "pop behaviorism", targeting three contexts: workplace, parenting, and education. [...] peer reviews can either serve as "rewards" (summative assessment in the form of scores/grades) or as constructive feedback (formative assessment). It might make sense to discuss the latter at the workshop.

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

@section{Related Work}

Where do we need people doing reading for the WG?

- Program comprehension from the perspective of comparative evaluation
- Test comprehension from the perspective of enhancing your
understanding of the problem specification
- How do you motivate reflection?
- How do you shift motivation from extrinsic to intrinsic factors?
- Learning by example
- Industrial peer-review practices and their relationship

@subsection{STUFF TO WORK IN}

Many of these may end up covered in other sections.  For now, this is
a dumping ground for work we want to cover somewhere.

@itemlist[

@item{Computer-mediated communication in collaborative educational settings (see ITiCSE WG 1997)}

]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Conclusion}

@(generate-bib)

@section{Appendix --- Case Studies}[#:tag "s:case-studies"]


