#lang scribble/base

@(require "bib.rkt"
          "helpers.rkt")

@title{Working Group Report on In-Flow Peer Review}

@section{Members}

All of our names go in here

@section{Introduction}

What is in-flow peer reviewing?

In-flow changes the motivation from being purely extrisnic (eg, "this
will be graded") to intrinsic -- this does not necessarily improve the
quality of feedback, but it should at least improve the desire to
comprehend (and some students will realize that providing good
feedback forces even better comprehension).

In-flow also emphasizes _comparative_ examination (of structure, tests, etc.)

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

@subsection{Engaging Students in Learning}

@relworkfill{Summarize work on Contributing Student Pedagogy}

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

As a pedagogic device, in-flow peer-review targets particular learning
objectives on the parts of students.  A broad pedagogic goal of
"engaging students in learning", for example, has particular
manifestations in the context of in-flow peer review.

The primary goal of in-flow reviewing is to help students reflect on
their work while it is in progress.  When looking at an individual
instance of in-flow peer review, our key question is therefore 
"what do students need to reflect on in order to improve their work?"
Our discussions of related literature around student learning
objectives thus focus on what students need to reflect on, and how to
best enable students to do that reflection.

Can it fill a void in some curricula/assignments, causing kinds of learning
that wouldn't happen otherwise (writing skills, critical thinking skills)?

What other techniques accomplish the same things, without being categorized as
in-flow peer review per se.  For example, what does in-flow peer review do that
after-the-fact review does not do: both clearly encourage critical thinking and
writing skills?  This is a comparative question, but helps nail down the goals
of in-flow in particular.

Within the various case studies from the working group, students were
asked to produce code, produce test-suites, produce security-testing
plans, plan large projects, @fill{}.

Potential learning goals for in-flow peer-review include:

@itemlist[
@item{Learning how to read and comprehend submissions by others}
@item{Learning how to compare the behavior of different programs}
@item{Learning how to evaluate submissions by others}
@item{Improve students' appreciation of the benefits of
structure/documentation of code
  -- both by getting poor reviews, and by seeing the mess of others}
@item{Improve students' ability to test code}
@item{Forcing students to reflect on (their own) design choices}
@item{Learning new programming techniques by example}
@item{Improvement in confidence and self-efficacy in your work}
@item{Learning how to provide feedback to others}
@item{Learning how to evaluate feedback
  -- this is a difference between in-flow and typical homework grading}
@item{Learning to use what one has learned from reading others' work to
improve one's own}
]

@subsection{Learning By Example}

@relworkfill{Summarize related work on learning by example}

Discussion here needs to cover things like :
@itemlist[
@item{How many examples does one need to see before learning occurs?}
@item{How similar do the examples need to be?}
@item{What scaffolding (i.e., review questions) foster learning from examples?}
]

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

]

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

There is significant literature on peer review, both within and beyond
Computer Science.  As this working group is focused on
@italic{in-flow} peer review, we provide only a brief overview of
general peer-review literature.  We then focus on papers and ideas
that pertain particularly to the in-flow aspects.

Where do we need people doing reading for the WG?

- Program comprehension from the perspective of comparative evaluation
- Test comprehension from the perspective of enhancing your
understanding of the problem specification
- How do you motivate reflection?
- How do you shift motivation from extrinsic to intrinsic factors?
- Learning by example
- Industrial peer-review practices and their relationship

@subsection{General Peer Review}

This is a cite to Topping@~cite["topping-peer-review98"], just to test the bibtex framework.

@subsection{STUFF TO WORK IN}

Many of these may end up covered in other sections.  For now, this is
a dumping ground for work we want to cover somewhere.

@itemlist[

@item{Contributing Student Pedagogy (see ITiCSE WG 2008)}

@item{Computer-mediated communication in collaborative educational settings (see ITiCSE WG 1997)}

]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Conclusion}

@(generate-bib)

@section{Appendix --- Case Studies}


