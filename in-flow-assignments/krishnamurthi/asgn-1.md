# Assignment Name

Who is the Most Liberal/Conservative Senator?

## Course Context

The course is an introduction to computing for humanities and social-science students.
Students come in with no more background than basic Excel (e.g., sum a column of numbers),
and are generally not expected to proceed to regular computer science courses.

There is a decent level of TA support relative to the size of the class, so that we can
perform manual grading as needed.

## Assignment

Obtain the voting records from the 2012 US Senate season. Cluster senators by their votes
to identify senators of similar ideological bent. Try to identify the most extreme senator(s)
in each cluster. 

Also answer this question:
Does your clustering analysis automatically identify which of these is conservative and which
is liberal? If so, how, and if not, what other automatic analysis might help perform that?

## Educational Goals

The goal is to have students learn how to perform clustering in datasets presented as
matricies reflecting preferences on similar topics. (Other datasets, such as Netflix
or Amazon ratings, have a similar flavor.)

## Intermediate Stages

1. Download the correct voting records (2 days).
2. Write code that can meaningfully compare the voting records of two candidates (5 days).
3. Generalize this code to apply to all pairs of candidates (2 days).
4. Apply this procedure to identify clusters (5 days).

## Stage Submissions

1. No submission. Double-check with TAs if you need help.
2. Submit code and tests for peer-review.
3. Submit code and tests for peer-review.
4. Submit for final grading (but not peer-review). Explain how you performed clustering and 
   why it was reasonable. Also answer the written question.

## Peer Review

For both stages 2 and 3:

Peers will examine the code for coherence and correctness.

Coherence is examined by looking at the tests. Reviewers will evaluate whether the tests
meaningfully represent the intended purpose, e.g., the tests for stage 2 usefully compute
a "distance" between two Senators, and those for stage 3 accurately apply this to all pairs
of Senators.

Correctness is examined by checking that the code seems to correctly perform what the
tests intend.

Two students will review each time.

Rubric:

  For the given code and test suites, provide scores between 0 and 100 for:
  
  - Coherence:
    Do the tests meaningfully represent [a distance between two Senators /
    the distance between all pairs of Senators]?

  - Correctness:
    Does the code appear to perform the intended computation correctly?

## Expert Review

Experts will be on hand for all stages, but will only formally grade after the
last stage. It would be useful for students to solicit the input of experts after
the first stage to make sure they are working with the correct dataset.

Experts will conduct a quick review of the tests submitted after phase 2 to make
sure students have defined good tests (small, representative of possibilities,
covering edge cases, etc.). If not, they will give feedback to the students to
help them do better for phrase 3.

Experts will eyeball reviews after phases 2 and 3 for egregiously bad responses,
but otherwise not interfere in the peer-review process.

## Grading

Work at the intermediate stages will not be formally assessed.

The grade for the assignment will depend entirely on the final product.

## Thoughts

This seems like a good assignment for peer-review. The main reason for not doing
even more reviewing is to reduce the time burden on non-majors, who (on our campus)
tend to put in many fewer hours per course than computer science students.

The downside of doing peer-review is that it increases the course burden on a
population that is somewhat tentative about the time-commitment to learn
computer science. This would be mitigated by not doing peer-review until the
fourth or so week of the semester.

Another downside is that the skills learned here, while valuable in many settings
in principle, are unlikely to be exercised much in college (unless these same
students participate as tutors in Writing Across the Curriculum or other such
opportunities). Therefore, their skills are likely to atrophy before they put
them to real use. If that happens, it is worth questioning whether this time
was well spent.
