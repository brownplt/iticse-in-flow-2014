# Assignment Name

Changing the Environment

## Course Context

An upper-level undergraduate/graduate course on software modeling and
verification.  Students have had most of an undergraduate degree in
CS, but might not have prior exposure to system modeling.

## Assignment

The overall assignment asks students to find design flaws in a
protocol for controlling traffic lights when one end of the light has
a capacity constraint (like allowing cars onto an island).  The
assignment gives students multiple (some broken) implementations of
the light protocol, asks them to verify/correct design flaws in each
implementation.  Doing this involves writing a model of the signals
that drive the protocol (such as the sensors at the intersection
that detect cars) -- this is called an "environment model".

## Educational Goals

This is a warm-up assignment on verification, used to teach students
the basics of using a model checker, setting up a problem for model
checking, writing environment models, and writing formal properties to
verify with model checking.  The assignment has a secondary goal of
getting students to appreciate the potential complexity of environment
models, and the relationship between environment models and observed
system behavior.

## Intermediate Stages

There is one intermediate stage: students will be asked to submit a
candidate environment model, 2-3 reasonable protocol properties that
should hold under this environment, and 1 reasonable protocol property
that would not hold under this environment.  Each of the environment
and the properties would be given in the formal language required by
the verification tool being used for the assignment.

This would be due roughly 3 days before the final assignment deadline.

## Stage Submissions

An environment model and 3-4 properties, written in the formal
language required by the verification tool being used for the
assignment.  All components are required.

## Peer Review

Each student will review the submission of one anonymous peer, and one
submission by staff that is designed to be overly simplistic for the
problem.  The rubric will ask questions such as

* does the environment model conform to the interface specification
implied in the assignment?

* is the environment rich enough to enable verification of the
properties the author expects to hold?

* is the environment limited enough to prevent verification of the
reasonable properties the author expects to fail?

* what features do you like and dislike of this environment model?

## Expert Review

Experts will not conduct reviews.

## Grading

Students' grades will be based on the accuracy of their claims about
the relationships between properties and environment models, and the
accuracy of their reviews of others.  We expect students will change
their environment models between the initial stage and the final
submission.  Initial stage models with interesting or complex
behaviors will be worth more points than naive models.  

Awarding more points for complex behaviors in the initial environment
model discourages students from submitting easy models for the sake of
getting quick points for properties that aren't supported in simple
models.  The simplistic staff-provided solution is included to check
that students can indeed detect the problems with simplistic
solutions.

The peer-reviewed portion of the assignment is worth only part of the
overall grade, since other components (fixing the system model) aren't
subject to peer review.

## Thoughts

I like that this assignment uses peer review on only one component: it
focuses on the component that students might find the most unusual,
while still leaving part of the assignment completely solo (which aids
grading).

This assignment suggests a logisitical challenge: model checker exercises
are usually all in one file.  There is high likelihood that students
would submit too much of their work for review, thus leaking
information that we mean to keep private to each student.  Is a human
process, software infrastructure, or grading penalty/incentive the
right way to prevent students from leaking assignment components that
should not be shared?

 