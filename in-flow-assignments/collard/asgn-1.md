# Assignment Name

What is the assignment called?
Join Lists (aka Ropes)

## Course Context

This is a sophmore level computer science course titled Programming Methodology. 

At this point, the majority of students have taken Introduction to Programming 
in Java and a course covering Object Oriented Data Structures in Java. 

In this course, most students will be seeing Scala and functional programming
for the first time.

## Assignment

For this assignment students will be asked to implement a data structure called
a JoinList. In functional programming, this is often called a 
[Rope](http://en.wikipedia.org/wiki/Rope_(data_structure)). Students are given
a few data types:

```scala
sealed trait JoinList[E]
case class EmptyJoinList[E]() extends JoinList[E]
case class One[E](elt : E) extends JoinList[E]
case class JList[E](lst1 : JoinList[E], lst2 : JoinList[E], size : Int) extends JoinList[E]
```

In addition to this students are given a few support functions which they can
use. Finally, students are asked to implement a handful of functions.

Students will have one week to complete the assignment.

## Educational Goals

At this points students have worked with Lists and Binary Trees. This assignment
is more practice with a recursive data structure that requires something
slightly clever to have decent running times.

## Intermediate Stages

1. Provide test cases that cover the functions they will be implementing
2. Provide an implementation for the functions.

## Stage Submissions

We will provide students with a submission script which will process the
students work for each step, verify that it is a valid submission, and 
finally dispatch it.

## Peer Review

Students will be asked to review the test cases for 2 or 3 other students. with
the following rubric:

* How well do the tests cover the defined functions?
  - Likert: (No coverage) 1 . 2 . 3 . 4 . 5 (complete coverage)

* If the coverage is not complete, provide atleast one example case that is not
covered.
  - Freeform

* Are all tests correct? If not, list the tests that are incorrect and provide
and example case where the test fails.
  - Freeform

## Expert Review

It is unlikely that we will have the man power to provide expert reviews for
this course.

## Grading

The initial test cases will be worth 25% of the grade. The implementation plus
any improvements to the test will be worth the remaining 75%.


## Thoughts

It would be nice to have multiple review steps for this assignment: one for test
cases and then one for implementation. However, because the one week time limit
I feel that having multiple review steps will disrupt the flow of student work.