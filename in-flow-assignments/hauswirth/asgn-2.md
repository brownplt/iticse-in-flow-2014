# Assignment Name

Pepr: Peer Project Review

## Course Context

This assignment fits our "Software Performance" (SP) Masters course at the University of Lugano (http://boole.inf.usi.ch/sp-2013/index.html). The course teaches how the various layers of a computer system interact and affect the resulting performance. It performs two cuts down the system stack: one about the "state" and the other about the "behavior" of a system. The discussion of "state" investigates memory usage of applications, leak detection, garbage collection, virtual memory management, and cache performance. The discussion of "behavior" investigates call graphs, dynamic class loading, shared libraries and dynamic linking, control flow graphs, exception handling, compiler optimizations, and branch prediction. The course uses Java virtual machines and their internal operation as a running example and teaches basic static and dynamic program analysis techniques. Given the quantitative aspects of performance, the course introduces basic instrumentation and measurement tools, experimentation and evaluation approaches, and data analysis and visualization techniques.

Concurrently most SP students also take "Software Performance Lab" (SP Lab), which includes an indivudual programming project during the second half of the semester. Last year the projects involved modifications to the Jikes RVM or to Jikes RDB (http://sape.inf.usi.ch/rdb). This assignment essentially corresponds to this lab project.

We usually have between 5 and 15 students (and often some students take the course, but not the lab), and we have one TA for SP and another TA for the SP Lab. The TAs usually are PhD students who also perform research in the systems area.

## Assignment

This assignment really is a small (7-week) project, where students develop an extension to Jikes RDB, a visual debugger for the Jikes RVM. RDB provides an API that can be used to traverse and analyze all the internal data structures of the RVM as well as the Java application running on top of the RVM. RDB provides access to every byte of the RVM address space, and it provides ways to determine which data or code object any given memory location belongs to. Ideas for RDB extensions to be developed by students include heap assertion checkers, heap traversals or queries, garbage detectors, data structure visualizations, or visualizations of control-flow or call graphs.

## Educational Goals

Understand the internal structure of a virtual machine. Acquire the ability to modify (fix, extend) a virtual machine. Learn to review other people's work, and to receive and act upon constructive criticism.

## Intermediate Stages

Proposal Stage: In this stage each student proposes an extension to RDB which they would like to develop.

Prototype Stages: The goals of the prototype stages are not pre-defined by the instructor. Each prototype stage takes one week, and goals for the next stage are defined by the team and the instructor during the expert review of the current stage.

Artifact Stage: In this last stage, (happening in the second-to-last week) students package their project as an artifact, complete, well designed, and fully documented, and publish it so it can be used by other users of RDB.

## Stage Submissions

Proposal Stage: The submit a short (one page) written proposal of their project.

Prototype Stages: Students have a working system and a test suite at all times, maintained in a version control system. Goals for stages correspond to features that have to be implemented and tested.

Artifact Stage: Students submit their packaged artifact.

## Peer Review

Proposal Stage: Students review their peer's proposals and submit a peer review consisting of two comments: one aspect they particularly like about the proposal, and one aspect they think should be improved (including the direction in which they would see an improvement).

Prototype Stages: Each week in class students present the goals they had for this week, and then they present their progress (including a demo of their prototypes). After each such presentation, all peers need to submit a peer review consisting of two comments (like the proposal stage).

Artifact Stage: In the last week of the project, students evaluate the artifacts of their peers. They evaluate whether the artifacts are (1) usabale, (2) extensible, and (3) well documented.

## Expert Review

Proposal Stage: The instructor meets with each student individually and discusses their proposal (and the peer reviews they received). Together they dedice on and write down the goals for the first week prototype. The instructor also discusses the peer reviews that student wrote.

Prototype Stages: The instructor meets with the students and together they assess which of their goals the students met (this impacts the grade), and they decide on and write down the goals for the next week.

Artifact Stage: The instructor assesses the quality of the final artifact, using the same rubric used for the peer review.

## Grading

The grades are entirely based on the expert reviews.
Peer reviews do not affect the grade.

## Thoughts

I picked two assignments that are a bit outside the scope of traditional assignments. I hope that's ok. The first assignment has a smaller scale than a homework assignment, the second assignment (discussed here) is larger. Students in SP Lab have to do a project during the second half of the semester. Traditionally, most projects are invidiual projects, and the TAs have weekly progress meetings with the students. The TA's feedback often focuses on the future, on how to reach the project goals from the current state of the project. We can use peer feedback to focus mostly on the past.

In this assignment, peer reviews of prototypes are entirely based on the presentation (and on whether or not the students reached their goals). Alternatively, or additionally, peer reviews could also involve code reviews of the prototype's code. I am not sure to what degree this would scale, though.
