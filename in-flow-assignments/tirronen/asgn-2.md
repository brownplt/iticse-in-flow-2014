# Assignment Name

"Boggle again". I know boggle has been done to death over the years, but
it is still a nice exercise.

## Course Context

The course for the exercise is my Introduction to Functional programming
course. This course is slightly 'special' in how it is organized. Most
importantly, we do not give grades and the students are allowed to choose
how large course they want in the range of 1-5 credits (ects). The course
aims to emphasise self-directed study and group work, consisting of both
group and individual exercises. The course is taken by a wide range of
students. Many of the students are masters level computer science students,
but significant portion of the students take the course on bachelor level.
In extreme cases, I've seen people with no programming experience at all.
Physicists often attend as well.

## Assignment


The assignment is the usual "write a program to play Boggle". For those who
haven't seen boggle, it is a simple word game by Alan Turoff. The essential bit
of the game consist of 4 by 4 grid of letters and the aim of the game is to
find as many words in the grid as possible, with some constraints on how the
words can appear in the grid.

Students are required to make a program that reads a list of words and the grid
and prints out all the words it can find.

## Educational Goals

Mainly, this exercise is intended to train people on how to decompose a complex
problem into bite sized ones. Also, it attempts to prepare people for solving
problems recursively.

This problem is needed to achieve the second credit of the course.


## Intermediate Stages

Previous year the boggle game was quite has been a sticky one. One of the causes
for this might have been that people attacked the problem as a whole instead of
attempting any kind of partitioning. Thus, I already thought to adopt the design 
recipes approach for it, which seems somewhat modifiable for in-flow reviews.

1) Examples. The student is supposed to take intermediate states of the program,
   in the process of finding a single word from the board, and write down the
   next stages. This is intended as a hint that there are subproblems to be 
   discovered.
2) Subdivision. Students are required to submit their plans for subdividing
   the problem to different subproblems. 
3) The programming.
4) Testing and quality.

## Stage Submissions

1) Hand drawn figures and short explanations.
2) A short description of each subcomponent, including its type and some
   examples on how it works.
3) The working program code.
4) The identified 'algebraic properties' of the program and quickcheck
   tests for them.

## Peer Review

1) Nothing, since I can't squeeze this many steps in the time table.
   Possibly, maybe, I can arrange students that participate in same
   supervised sessions to quickly take a look at the designs.

2) The reviewers are instructed to verify that the subcomponents can
   be connected sensibly. Also, reviewers should present alternative
   subdivisions for the problem, if their own solution differed from
   the reviewed one. Further checks could include items like checking
   if the subcomponents can be further divided into pieces and doing
   'impedance matching' between the components and their implementability
   with Haskell.
     
3) Possibly nothing at this stage. I could have people review the code
   for the usual fumbles, but for this exercise this might not be so
   useful.

4) Run the tests and ascertain that the tests pass. Also, the reviewers
   should adapt tests of their own solution and execute them on the 
   reviewed code, when possible.

Since the boggle game is a short project for groups of 1-3, I think the
easiest way is to pair the groups for this exercise.

## Expert Review

The process is reviewed by the course TA's. Since the problem is now
subdivided, the TA's probably should flag those answers that have
high potential for failure. (The TA's are people who took the same
course year or two earlier.)


## Grading

Assessment for most of the exercises in this course is
a free form report by the supervising TA. Mainly, the TA's
read all of the submissions and aim to give positive feedback,
notes for improvement and flag the incomplete answers.

To review the reviews it is probably enough to just flag
those reviews that are too hostile and require students to
rewrite them.

## Thoughts

Making this assignment peer-reviewed forces me to spread it 
out over several weeks. This might be a good thing, since 
it allows me to have more 'easy' exercises in the beginning.
However, I fear that the design parts of the exercise might
end up too early in the course and that the students are not
properly ready to tackle them at that point. I might also 
consider bumping the exercise further along the course and
splitting the programming phase to more than one exercise.



