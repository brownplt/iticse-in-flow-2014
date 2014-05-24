# Assignment Name

Simple Type Checker

type-check

## Course Context

The course is a programming languages course intended for juniors and beyond
(though advanced sophomores sometimes take it and do well).

This assignment happens about halfway through the course --- students have
implemented interpreters and simple program analyses for small functional
languages.  This assignment gets them working on more sophisticated analyses
focusing on types.

## Assignment

Two things, equally important:

- Write a test suite capable of exploring the behavior of a type checker
- Implement the type checker itself


## Educational Goals

Teach students about type checking, and give them experience thinking about
what it means to be a well-typed or ill-typed program, at least with respect to
the particular type system we are teaching.

## Intermediate Stages

Students first submit their test cases, and then submit their implementation.
These would be in separate source files.

## Stage Submissions

The assignment is out for a week, and tests can be submitted at any point.  The
implementation must be submitted after submitting tests *and* after submitting
reviews for others' test cases.

The student can also (optionally) submit a revised test suite at any point
after their reviews have returned.

## Peer Review

After submitting test cases, a student will be presented with the test cases of
3 other students, biasing towards those who have most recently submitted.  If
fewer than 3 students have submitted, fake but plausible solutions written by
the course staff are substituted.

The reviews will be submitted through a web form that has the text of the test
suites under review.  The rubric is a series of specific questions about test
coverage, with instructions to indicate either “no” or a line number where
the test resides.  Prompts include

- Is there a test for a function with a polymorphic type (like a -> a)?
- Is there a test for a numeric operation applied to a non-number?
- Is there a test with a recursive function?

There will be roughly 10 of these questions.  Finally, we will ask:

- Do you have any other comments about the style or organization of the test
  suite?

The last question has a comment box below it for entering free-form text.

There is no peer review of the implementation submission.


## Expert Review

We run a reference solution against the original author's test suite, and
provide the information about which tests passed and failed.  We do not provide
coverage information of which tests covered or did not cover certain features
under test (the first 10 questions).

## Grading

1. Review grade

  An automated program will inspect the line-number marked tests in each review
  or accuracy against the student's test suite.  We can do this by having a
  stable of broken implementations, one for each “coverage” criteria, that
  detects if a student wrote a test for a particular case.

  This lets us automatically grade the quantititative part of the review, and
  give a score to the reviewer based on what proportion of the tests they
  identified as being present (and at the right line) or absent.

  We will not give any points for the qualitative (open-response) part of the
  review.

2. Tests grade

  The same automated tools can be used to grade the test suite itself, giving
  credit for the number of noticed broken implementations, and also deducting
  points for incorrect test cases.

  If the student resubmitted a new test suite after review, that is graded by the
  automated tool as well, and their total test suite grade is a weighted sum of
  70% initial submission, 30% final submission.

3. Implementation grade

  We will do a simple automated grading that runs the students' implementation
  against a test suite of our design, and give credit based on how many tests it
  passes.


The total grade will be 25% review grade, 40% tests grade, and 35%
implementation grade.

## Thoughts

The review-comparison workflow described above is heavily inspired by Jay
McCarthy's assignment process at BYU.

