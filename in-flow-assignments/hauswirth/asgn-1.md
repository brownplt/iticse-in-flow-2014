# Assignment Name

Iffy: In-Lecture Peer Review for Comprehending If Statements

## Course Context

This assignment fits our "Programming Fundamentals II" (PF2) second-semester Bachelor course at the University of Lugano (http://boole.inf.usi.ch/pf2-2014/index.html). At the start of the course students are expected to know Python (from the first semester programming course), and throughout this course they learn object-oriented programming in Java. We use a "Conversational Classroom" approach to teaching. Concurrently to PF2 students also take "Software Atelier II" (SA2), which includes a group programming project during the second half of the semester. This year those projects are based on Android.

We usually have between 15 and 40 students (due to administrative reasons students who failed the first semester programming course start taking PF2, and they usually either drop out or fail in the end, significantly reducing the number of students over the course of the semester).

We usually have two teaching assistants (PhD students who TA in addition to being RAs) for this course, plus two TAs for the concurrent programming project.

## Assignment

This assignment is used to introduce a new concept (e.g., if statement), after having read about it, but before actually discussing it in class. The assignment consists of multiple small problems, all solved during a lecture using our Informa classroom clicker tool (http://sape.inf.usi.ch/informa). After each problem is solved, students grade the solutions of some of their peers, then the instructor discusses some of the solutions, and then the class moves on to the next problem.

## Educational Goals

Be able to precisely explain the meaning of if statements. (This is the most basic such assignment. We often skip it and use similar assignments for more complex control-flow constructs.)

## Intermediate Stages

Stage 1: if statement: A small snippet of code with a single if statement.
Stage 2: sequence of if statements: Code snippet with one if following the other.
Stage 3: nested if statements: Two nested if statements.

## Stage Submissions

At each stage, students use Informa to draw and submit a CFG for the given piece of code. Submissions are anonymous, thus students are less reluctant to submit solutions they are not that confident in. This opens the opportunity for the instructor to discuss various misconceptions.

## Peer Review

Peers simply determine whether or not a CFG corresponds to the given source code or not. (Informa doesn't currently support providing peer feedback beyond a boolean correct/incorrect answer.) Peers thus get confronted with alternative solutions and have to leave the "safe path" they might have stayed on with their own solution. It will also trigger their interest in knowing whether or not certain (to them) non-obvious solutions indeed are correct or not. Moreover, they learn how their peers were performing (competitive students seem to like that).

Peers will review inside Informa (an application running on their computer). They will automatically receive a subset of the submitted solutions. Reviewing continues until the instructor decides to stop the process.

## Expert Review

The instructor picks a subset of CFGs (ideally one for each kind of misconception) and discusses them with the whole class. There is no actual rubric, but the discussion covers why a certain solution is right or wrong, and it covers the pros and cons of different correct solutions. Given the boolean nature of the peer feedback, there is no need for the instructor to explicitly review the peer feedback.

## Grading

Submissions are anonymous. There is no score or grade, only a discussion on why a certain solution is correct or incorrect.

## Thoughts

I picked two assignments that are a bit outside the scope of traditional assignments. I hope that's ok. The first assignment (discussed here) has a smaller scale than a homework assignment, the second assignment is larger.

This assignment is something I actually do in my course, more or less as described. We do the assignment as well as the peer review and expert feedback in class. The different stages could be considered separate assignments, because each stage requires a complete solution to be submitted. Thus it is somewhat questionable whether this really fits the CaptainTeach definition of "in-flow" (the assignment really isn't "open" because the submission for a specific task can't be improved based on peer feedback). However, given that each assignment depends on the previous assignment, I guess it could still qualify as "in-flow".

The assignment is an example of a whole class of similar assignments, where students are required to translate between different representations (here: source code to control-flow graph) to express their understanding.

The current implementation of Informa limits peer feedback to a boolean correct/incorrect answer. We would like to extend this to more specific feedback, e.g., by asking peers to annotate incorrect parts of the target representation (e.g., nodes or edges in the CFG), or by asking peers to produce an explicit mapping between the two representations (e.g., by visually linking source code statements to the corresponding CFG nodes).
