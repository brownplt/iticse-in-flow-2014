# Assignment Name

Attacking Turnout

## Course Context

The assignment is for an upper-level undergraduate course on software
security engineering.  Course enrollment is roughly 45 students.
Staff consists of the professor and 2 student assistants who help with
grading.

## Assignment

Students are given a VM (virtual machine) that runs a hypothetical
grading system (database and interface for editing and viewing grades)
for a course.  At the start of the assignment, the database is
populated with the members of the class, and every student has a
failing grade recorded.  The assignment asks students to find as many
ways as they can to change their grade by exploiting design flaws in
the software.  In the first week, students only have black-box access
to the system (i.e., they can only interact with it through the UI);
in the second week, we give students access to the source code so they
can look for additional problems.

## Educational Goals

* Help students think systematically about where to look for security holes in software

* Help students identify the steps required to attack software through various components and interfaces

* Help students practice exploiting security holes in software

## Intermediate Stages

Stage 1: attack the system through the interface and/or command line,
without looking at the source code ("black-box").   

Stage 2: look at the source code and launch any additional attacks that you find ("white-box").

Stage 3: working with other students, develop a systematic plan for attacking a target system

Students are given a few days for each of blackbox/whitebox (in
succession), and a week for developing an attack plan

## Stage Submissions
 
All submissions are expected/required.
 
Stage 1: submit (1) an outline/description of how you looked for
blackbox attacks and (2) a list of attacks that you tried against the
system.  For each attack in (2), give the precise steps you took to
execute the attack and indicate whether the attack succeeded.   

Stage 2: submit (1) an outline/description of how you looked for
whitebox attacks and (2) a list of attacks that you tried against the
system.  For each attack in (2), give the precise steps you took to
execute the attack and indicate whether the attack succeeded.   

Stage 3: submit a how-to manual for how to try to attack a system with
similar components as Turnout.

## Peer Review

The staff will group the students into teams of 3-4.  Students will
conduct peer-review and authoring of the how-to manual within their
groups.  For stages 1 and 2, students will double-blind peer review
the work of 2 other students in their groups (reviewing the same
students after each stage if the group has 4 students).  After stage 2
reviews are in, group identities will be revealed, and each group
tasked with forming a manual of how to attack a system based on their
collective ideas.  Each group will submit a joint response to stage 3.
Each student will then peer-review the stage 3 submission from one
other group.

[Added after receiving Ville's comments] The double-blind structure
for the early stages reflects my concern that reviewing might be
biased by knowing who did the work.  The scenarios I worry about are
similar to those that arise in conference reviewing, though I expect
students have less experience (and hence maturity) in dealing with
those situations.  I also feel that sharing the identities puts the
burden on the course staff to create groups that exclude roommates,
close friends, etc.  If the early stages are blind, we can let the
software handle the review assignments.

For stages 1 and 2, rubrics would ask students to comment on whether
the outline missed any significant sources of attacks, and whether the
specific tasks targeted the goals in the outline.  Students would not
be asked to comment on the attack details.

For the group review in stage 3, students would be asked to reflect on
strengths and weakeness of the final attack plan, as well as to
indicate what they learned from the test plan that they
reviewed. (Wording not precise, but reflection is the goal here).

## Expert Review

Course staff would not review in the intermediate stages, though an
in-class discussion would occur after the stage 2 deadline, and again
after the stage 3 deadline.

## Grading

Stages 1 and 2 are graded together (stage 1 mostly lets students get
some early feedback on what they are doing).  Grades will be based on
the thoroughness of the plan, the appropriateness of the detailed
attacks towards the goals of the plan, and whether reviews reflected
the goals implicit in the reviewer's own plan.  The majority of the
grade will come from these stages.

Stage 3 would be graded based on whether the report showed the
appropriate influence from each of the group members' plans.

## Thoughts

This is an adaptation of an assignment I have given many times in my
software security course.  The original assignment has students patch
the system instead of having the students work as teams to produce an
attack plan.  The idea of having the attack plan was inspired by
thinking about how to leverage students' reviewing each others' work.

This assignment is making me think harder about the role of peer
review in encouraging students to reflect on their own work.

Peer-review seems to fit this assignment well because the assignment
has natural high-level artifacts (the attack plans) to review, and a
way to scope an early deadline (blackbox) around a reasonably complete
initial artifact.

Ville's comments asked why I didn't have students review their
black-box strategies in light of the white-box ones: basically,
reflect on what black-box attacks (if any) would have uncovered the
white-box issue.  That's a good and interesting idea, and I could
certainly see adding this to the assignment outside of the
working-group context.  Left the assignment for the working-group
unedited since I don't think this change affects peer-review.