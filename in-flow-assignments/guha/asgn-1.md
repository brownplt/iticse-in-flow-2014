# Assignment Name

measuretrees

## Course Context

To be offered for the first time in Fall 2014. This is a third-semester
course on ``programming methodology'' using Scala. The students have
one year of Java experience. This is the 4th homework assignment in
the course. Students have been exposed to functional programming
(i.e., structural recursion, recursive data types, and higher-order functions) 
for three weeks when this assignment is released.

## Assignment

Students are provided an three implementation of maps: sorted association lists,
(unbalanced) binary search trees, and AVL trees. These data structures and
algorithms have been presented in class. Students have to build the framework
to benchmark their performance.

## Educational Goals

- Observe, empirically, the running time of O(n) and O(log n) algorithms to
  insert and lookup elements in a map.
- Writing recursive functions: e.g., generate random/ordered lists of numbers,
  insert a list of values into aforementioned data structures, and lookup a list of 
  values.
- Writing higher-order functions: functions to insert values into lists/BST/AVL
  vary only in the type and the name of the insert function. Identify the template
  and abstract into a higher-order function.

## Intermediate Stages

1. Write a higher-order function that calculates the time needed to execute another
   function, averaged over N runs.
2. Write a function to generate a list of N integers that are random/ordered.
3. Write functions to insert/lookup N values into map data structures.
4. Write a benchmark that using above functions that plots running times.


## Stage Submissions

Assignment is out on Tuesday and due next Tuesday.

- Submit 1--3 above by Sunday. 
- Submit 4 by Tuesday


## Peer Review

Students peer review each others' solutions to stage 3. The goal is to
determine if the reviewee has used functional abstraction appropriately, or if
they've naively cut-and-paste their insert/lookup function three times.

Possible prompt:

- We've seen several examples of higher-order functions in class. Could this code
  be made any shorter and simpler using higher-order functions?

## Expert Review

No expert review.

## Grading

This is probably the first assignment that uses in-flow review. I may
not want review quality to affect grades.

## Thoughts

The goal stage 3 is to recognize a pattern and create the right abstraction. I could
give them the signature for the higher-order functions they need, but that would
eliminate a good deal of thinking.

