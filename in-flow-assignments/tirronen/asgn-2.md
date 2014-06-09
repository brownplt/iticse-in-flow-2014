# Assignment Name

"Boggle again". I know boggle has been done to death over the years, but
it is still a nice exercise.

## Course Context

This exercise takes place in the course 'Introduction to Functional Programming'
This course is a part of a study where we have studied issues such as group work
and the effect that flexibility in the course arrangements has on student self-direction. 
This results in few important differences from the ordinary course structure.
For example, we do not grade students, whom can also choose
how many credits they wish to complete 1-5 credits (ects). These changes
are present to allow students regulate their use of time; an efficient
student can complete the whole course in two weeks whereas a student with a weaker
skill set can spend more time on the basics instead of being rushed on to the
advanced topics. The course emphasises group work and most exercises can be
completed in groups. 

Majority of the participants are masters level computer science students,
but a many the students take the course on bachelor level as well.
In extreme cases, the course has been successfully completed by students
with no prior programming experience at all. 

## Assignment

The assignment is to write a program to play a game called Boggle.  Boggle is a
simple word game by Alan Turoff, subsequently popularised as a programming
assignment by Julie Zelenski (Nifty assignments, Parlante, Estell, Reed,
Levine, Garcia, ACM SIGCSE, 2002). The game consist of 4 by 4 grid of letters
and the aim of the game is to find as many words in the grid as possible
respecting few constraints on how the words can appear in the grid.

In this version of the assignment students are required to make a program that
reads the letter grid and prints out all the words it can find.

## Educational Goals

This exercise is intended to train people on how to decompose a complex
problems into sufficiently smaller, solvable, problems. Additionally, it
attempts to prepare people for solving problems recursively.

## Intermediate Stages

The boggle exercise has presented significant difficulties for many students
in the previous iterations of the course. We have observed that students attempted
to solve the problem as a whole instead and subsequently got stuck with the complexity
of the problem. Adding more stages and the peer review is an attempt to solve this
problem. I propse the following intermediate stages to enable students to solve
this problem more consistently: 

1) Examples. The student is supposed to take intermediate states of the program
   in the process of finding a single word from the board, and write down the
   next stages.
2) Subdivision. Students are required to identify sub-problems of the original
   task and to write examples of the behaviour of the said components. Furthermore,
   students are asked to identify algebraic properties of the subcomponents and
   to formalize them as quickcheck tests.
3) Programming. Students should write code for each of the sub-problems and to
   compose the sub-solutions into a solution for the original problem.
4) Testing and quality. Students are required to make sure that their program
   is of high quality. This stage is also intended to teach students how to
   use property based testing.

## Stage Submissions

1) Students can submit hand drawn figures and short explanations.
2) Students submit a short description for each subcomponent. These
   descriptions include types and examples of the envisaged behaviour of the component.
   In addition, we require at least one algebraic property that has been encoded as
   a quickcheck test. 
3) Students submit the working program code.
4) Students submit 'algebraic properties' they identified and the quickcheck
   tests that they have written for these properties.

## Peer Review

1) Nothing, since I can't squeeze this many steps in the time table.
   Possibly, maybe, I can arrange students that participate in same
   supervised sessions to quickly take a look at the designs.

2) The reviewers are instructed to verify that the subcomponents can
   be connected sensibly. Also, reviewers should present alternative
   subdivisions for the problem if their own solution is different from
   the reviewed one. Further review items could include items like appraising
   whether the subcomponents can be further divided and evaluating 
   'impedance matching' between the components and their implementability
   with Haskell.
     
3) Possibly nothing at this stage. I could have people review the code
   for the usual fumbles, but for this exercise this might not be so
   useful.

4) Reviewers are instructed to adapt tests they wrote for their own code
   and execute them on the reviewed code. Reviewers should also present 
   short evaluation of the observed code quality.

The boggle game is a short project for groups of 1-3 which means that
the easiest way to generate reviews is to pair each group with another.
Alternatively, each student could receive a different work for review, which
would allow one additional step of comparing the review experiences within
the group.

## Expert Review

The exercise is reviewed by the course TA's, whose aim is to
alert students when their answers are unlikely to result in
a working program. 

## Grading

Assessment for this exercises in this course is
a free form report by the supervising TA. For the student reviews,
the TA's should flag hostile and incomplete reviews.

## Thoughts

Converting this assignment into a peer-reviewed form forces me to spread it out
over several weeks. This might be a good thing, since it allows me to have more
'easy' exercises in the beginning.  However, I fear that the design parts of
the exercise could end up too early in the course and that students are not
properly ready to tackle them at that point. I might also consider bumping the
exercise further along the course and splitting the programming phase to more
than one exercise.



