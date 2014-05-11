# Assignment Name

A Hotel Elevator Controller

## Course Context

The homework is from an upper-level undergraduate course on
applying logic to model systems, with an emphasis on automated tools
for analyzing specifications. Students typically have a solid base
in programming and basic computer science theory, but virtually
no experience in formal modeling (they may have some experience doing
testing, depending on prior courses, but may not even recognize that
that experience is related to specification).

The course is low on qualified grading staff relative to student interest.

## Assignment

Write a model of a typical elevator. Represent the elevator itself; floors 
of a building; buttons that users can press; and the elevator's controller 
that makes decisions. You should make the elevator specification fairly
operational, not too declarative.

## Educational Goals

To introduce students to modeling simple real-world systems, to gain familiarity
with both writing specifications and elucidating intended properties.

## Intermediate Stages

There will be three intermediate stages and a final submission:

1. Write down basic data declarations for the different intended components of the model.
2. Describe intended properties. Make these as comprehensive as possible.
3. Define an initial operational model.

The final version would contain revised versions of all these stages.

Each stage can be submitted at will, but in the above order, and all must be
submitted at least two days before the assignment is due.

## Stage Submissions

Submit the relevant piece of specification code for each stage. These are required.

## Peer Review

Three peers will review each submission. The peers will remain attached to each other
so that in each round they see the students' work. (If a student drops the course in
the middle, their peers will simply get less work.)

Rubrics:

1. Data Declarations:
   - Are there important components of the model missing?
   - Do the fields of each declaration look reasonable in naming and type?
2. Properties:
   - Do the properties listed look reasonable?
   - Are there key properties missing?
3. Operational model:
   - Is it suitably operational or is it too declarative?
   Note that you not evaluating on how well it passes the properties.
   It is assumed that the student will ensure compliance by the final submission.
   However, you should comment on any critical flaws you see that may hurt compliance.

## Expert Review

Experts will not review intermediate stages.

However, the course staff will have access to the peer reviews
when doing final grading. This is intended to help them with grading, 
but they will comment on especially helpful or unhelpful reviews.

## Grading

It is difficult to thoroughly grade the intermediate stages because the
submissions are assumed to be preliminary and not entirely well-formed.
Modeling is a difficult activity — even small amounts of "code" take many
hours and days to write — so the main goal of peer review is to have the
students help one another, not to vigorously find fault. Because of its
exploratory nature, grading intermediate stages might make students
too conservative and therefore fail to fully explore specifications.
Therefore, grading the stages might be quite counter-productive.

By the same token, grading the reviews might also be counterproductive.
Because this is their first exposure to a quite difficult activity,
we want students to gain comfort and facility with reading and commenting
on specifications. Putting them under the lens of grading might make them
too conservative (or even too nervous) and might inhibit their ability to
get comfortable with the subject matter and the process of peer-review.

## Thoughts

In principle, specifications are an ideal candidate for peer review:

- A typical specification is just a few dozen lines long, and on assignments 
  such as this, will fit entirely on one computer screen. 
- There is also lots of room for interpretation of the problem, and seeing those
  of others is very beneficial.
- It is a place where intermediate feedback can have huge impact on the 
  final result, because it can cause a complete change in perspective on 
  tackling a problem.
- While code and prose are voluminously available, formal specifications are not. 
  Therefore, the class may be the best venue for exposing students to several
  example of work by others.

Thus, using in-flow peer-review in a formal modeling course is likely to be 
especially productive.
