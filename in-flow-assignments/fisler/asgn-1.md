# Assignment Name

Attacking Turnout

## Course Context

The assignment is for an upper-level undergraduate course on software security engineering.  Course enrollment is roughly 45 students.  Staff consists of the professor and 2 student assistants who mainly help with grading.  

## Assignment

Students are given a VM (virtual machine) that runs a hypothetical grading system (database and interface for editing and viewing grades) for a course.  At the start of the assignment, the database is populated with the members of the class, and every student has a failing grade recorded.  The assignment asks students to find as many ways as they can to change their grade by exploiting design flaws in the software.  In the first week, students only have black-box access to the system (i.e., they can only interact with it through the UI); in the second week, we give students access to the source code so they can look for additional problems.

## Educational Goals

* Help students think systematically about where to look for security holes in software

* Help students identify the steps required to attack software through various components and interfaces

* Help students practice exploiting security holes in software

* Help students close security holes in software

## Intermediate Stages

Stage 1: attack the system through the interface and/or command line, without looking at the source code ("black-box").  

Stage 2: look at the source code and launch any additional attacks that you find ("white-box").

Stage 3: edit the source code to prevent as many attacks as you (reasonably) can ("patch").

Students are given a few days for each of blackbox/whitebox (in succession), and a week for patch (after the attack deadlines).

## Stage Submissions
 
All submissions are expected/required.
 
Stage 1: submit (1) an outline/description of how you looked for blackbox attacks and (2) a list of attacks that you tried against the system.  For each attack in (2), give the precise steps you took to execute the attack and indicate whether the attack succeeded.  

Stage 2: submit (1) an outline/description of how you looked for whitebox attacks and (2) a list of attacks that you tried against the system.  For each attack in (2), give the precise steps you took to execute the attack and indicate whether the attack succeeded.  

Stage 3: submit a patched version of the source code that fixes as many holes as possible.  Include a document summarizing what edits you made and why.  

## Peer Review

At each intermediate stage, what will peer-review do?

How many peers will review, and how?

Include review prompts or rubrics that you would
give to students.

## Expert Review

At each intermediate stage, will there also be
review by experts (and who are they)?

Recall that at each stage, there are two kinds of work:
a student's submission, and the reviews of that submission
by peers. Either or both could be considered for review.
What rubric would you use for the expert review (if any)?

## Grading

How do you anticipate the work done at the 
intermediate stages being assessed?
(Assume limitless human and computer resources.)

(How) Will this assessment impact the final score
on the assignment?

Recall that at each stage, there are two kinds of work:
a student's submission, and the reviews of that submission
by peers. Either or both could be considered for assessment.

## Thoughts

Any and all thoughts you have (including whether
an in-flow peer-review process even makes sense
for this assignment).
