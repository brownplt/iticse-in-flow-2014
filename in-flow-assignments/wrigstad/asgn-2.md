# Program 1


## Course Context

2nd year programming course teaching imperative and object-oriented
programming to students who know how to program in ML in a functional style.
About 50% know imperative programming from extra-curricular activities, but
not all.

## Assignment

Implement a simple graphical Pong game in Java. [Text from actual
assigment](https://github.com/TobiasWrigstad/ioopm/blob/master/uppgifter/fas1/sprint2/pong/uppgift.pdf). 

Here is my summary of the text in the link: 

"Implement a model for the game Pong. Use Model-view-controller. We supply the
graphical user interface.  The assignment will have you implementing a larger
interface on your own, and in the process navigate relevant parts of the Java
API, and use classes from the Java API such as Set, Point, and Dimension."

In the course, where I am currently giving this assignment, students are given
a huge list of educational goals, and must complete these goals in terms of a
number of programming assignments that they can choose from. Mapping
educational goals to programs and building coherent packages of educational
goals are part of the problem. A key idea is to put learning front and center,
and not as a side-effect of having written a certain program.

However, in this text, I am not focussing on the assignment as a constructor
for situations relevant for demonstrating educational goals, but as a tool for
understanding the design process, programming methodology and get savvy with
tools. 


## Educational Goals

Two kinds of goals:

1. Students are expected to demonstrate that the understand imperative and
OO-programming through the fulfilment of a large selection of goals. To do
this, they have a large set of programming assignments to chose from. (This is
just one of the 9 assigments in the 6-week Java part of the course.) In this
respect, the educational goal-kind is to generate problems and situations in
which to demonstrate certain subsets of the course's educational goals.

2. To present students with difficult enough programming problems for design
issues, debugging needs, etc. to surface. And to be a problem to which there
is no single best solution. 

As already statet, here I want to focus on the second kind. 


## Intermediate Stages

1. Program architecture (what are the key components, how do they interact,
etc. on a very high-level)
2. Data structure design (classes, what are the actual interfaces between
different modules)
3. Design of tests
4. First draft implementation (including tests)
5. Second draft implementation  (including tests)
6. "Finished" implementation (including tests)

In practise, 2 and 3 must probably be baked into a single stage, and 4-6 too.
Students have roughly three weeks at 66% pace to complete the assignment, and
too many intermediate stages might introduce more overhead than help. 

## Stage Submissions

1. Program architecture can be a quite simple sketch and accompanying
explanations. This should fit on 1 piece of paper (back and front). 

2 and 3.) might be code skeletons and high-level descriptions of test cases
respectively. 

4 through 6.) might be implementations at varying degrees of completion. 

## Peer Review

1.) The peer review can be a discussion where the reviewers try to check that all key components are present, and that the necessary information is available through the suggested chain of communication in the system. 

2 and 3.) The peer review could focus on the test cases, and whether the
suggested tests are reasonably complete, and motivated.

4 through 6.) The peer review could be structured as a code review, looking in
detail at some key piece of code, to see whether the written code uses
reasonable naming, structure, indentation, is correct, etc. It will be hard to
determine whether the code is correct since the specifications for each part
will generally be vague. 


## Expert Review

Expert reviews at each step will not scale up well. To this end, checklists
could be produced to guide the reviewing students in their task and serve as
the "expert's voice", but this feels quite weak. One possibility to facilitate
scaling is to (randomly) pick one the intermediate stages and review the peer
review. This would introduce some expert feedback in the review process which
both student pairs could learn from. 


## Grading

The use of in-flow peer assessment should preferably be integrated in the goal
system at different levels required so that students get to "tick something
off" as a reward for good peer review. (Or not, if the job was not well done.) 


## Thoughts

I feel a bit uninspired writing this. In hindsight, the final project would
make a better candidate for peer review since the students will know more
about the subject at this point. On the other hand, having a dialogue with
others as part of an implementation will certainly be beneficial, for example
by stimulating reflection. 
