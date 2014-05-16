# Assignment Name

Functional Tree Updaters

codename: updaters

## Course Context

This assignment is for an advanced introductory course at Brown on programming
with data structures and algorithms.  Students are learning about
O()-complexity and balancing trees when this assignment is released, and also
have seen algorithms (like searching and sorting) over functional lists.

## Assignment

Design an efficient data structure for incremental functional updates on trees.
Their algorithm should take an input tree to start, and return a pointer into
the tree that allows a client to “move” up, down, left, and right within the
tree.  At any point, they can request to update subtree at the current pointer
to a new subtree by applying a function to the subtree.

Finally, after any moves and updates have been performed, the client can
request that the pointer be turned back into a tree data structure.

The goal is to have constant time movement and update operations, and a to-tree
operation at the end that is linear in the size of the tree. This avoids the
naïve cost of recomputing the whole tree on every functional update.

Along with the code, students also must submit a justification for the
O()-complexity of each piece of the assignment.

## Educational Goals

- functional data structures
- evaluating the efficiency of their code
- designing data structures that cache relevant algorithmic information

## Intermediate Stages

Stage 1: Design a data structure for the pointer, and English descriptions of
how the various movement operation and algorithms will use it with the
appropriate complexity.

Stage 2: Write tests for each of the pointer creation, movement, update, and
to-tree operations.  Some of these are simple input-output pairs (for this
tree, this pointer is expected), and others are end-to-end "scripts": (for this
tree, turn it into a pointer, then do operations on it, then check the
resulting tree).

Stage 3: Write implementations for all the functions.

## Stage Submissions

Stage 1:  The student submits the data definition as code, several examples of
instances of the data structure, and a paragraph for each operation describing
how it will use the pointer data structure they've defined.

This step is due 3 days after the assignment is released.

Stage 2:  Students submit a file with as many tests as they believe necessary
to guarantee correctness of their final solution.

This step is due 5 days after the assignment is released, and the reviews for
step 1 must be submitted before this step is submitted.

Stage 3:  Students submit complete programs along with test suites.  Along with
their code, they also submit:

- A written description of how each function satisfies its O()-complexity
- A written description of how their data structure and plan changed since the
  initial data structure submission

This step is due 7 days after the assignment is released, and the reviews for
step 2 must be submitted before this step is submitted.

## Peer Review

Stage 1:  The data structure and explanations are distributed to the next two
students to submit.  These two students are remembered for the later stages of
this assignment.  In stage 1, the two students are asked:

- Are there examples of operations that you don't think can be performed within
  the correct time bound given this data structure and plan?
- Add a few new examples that explore types of trees the original author didn't
  cover with their examples.

Stage 2:  Upon submission, the same two students from stage 1 are notified that
they need to write reviews for the test cases.  Their rubric is:

- Do these tests cover the possible cases?  If not, write two tests that cover
  cases that this submission did not.
- Are the test cases correct?  If not, point out which test cases give the
  wrong answers.

Stage 3:  No review for this stage.

## Expert Review

There is no expert review for this assignment.

## Grading

The initial data structures and written plan will be evaluated by a human TA.
The TA will evaluate the plan based on its level of detail and clarity of
writing, *not* on its correctness or feasibility.  The TA will also take into
account the final write-up of differences between the initial and final
versions, and give credit for improvements.

The end-to-end tests from stage 2 will be graded by:

- running them against a reference solution and seeing how many fail
- having a TA look at the qualitative breadth of the unit and end-to-end tests

The final solution's English description of complexity will be graded by a TA
against the actual complexity of the functions.  The final program will be
graded by running an automated set of end-to-end tests written by TAs.

No weight in the final grade will be given to the reviews.

## Thoughts

This is based on a real assignment that we did in-flow in our course in fall
2013.  We made a few mistakes in our first iteration:

- We did reviews for every test/implementation pair of the movement, update,
  and to-tree steps, which was way too much reviewing.
- Even 3 steps of review is a lot, and we didn't have the "sticky" reviewers
  that I suggested above, so on every step students had to internalize a
  brand-new implementation from a new student.  Having sticky reviewers lets
  them use their experience from earlier review steps to give better reviews on
  the next step.
- We didn't have students write down what they changed, so there was little way
  for us to tell (without laboriously reading code), when reviews were helpful
  and when they weren't


