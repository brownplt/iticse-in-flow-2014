# Assignment Name

"My woefully insecure web-app"

## Course Context

This exercise is an introductory exercise
for autumn 2014 software security course. The course is a
masters level course and mandatory for majority of the
students.  As a prerequisite, the students should know how
to program and have some experience on what it is to write
programs in the large.

Students are not expected to be experts in web programming
and they are provided links for several real world
tutorials using whatever language they choose.

## Assignment

In the assignment the students are required to create a
simple on-line web-app for public use. The specification
for this application includes rudimentary login, sessions
and a simple message board service. The students are
also made to create this application according to
a strict timetable to simulate the conditions where
software security most usually breaks down.

The students are then asked to read an article about
threat modelling with attack trees and apply this to their
program. The same program is used throughout the course in
various other assignments, such as examining common web
application vulnerabilities or application of secure
programming tools.

## Educational Goals

The educational goals are to introduce the student to web
programming which is one of the main themes of the course.
Also, we wish to prompt students to reflect on how they
built programs and how to apply a more rigorous approach
to security while analysing the results of their
programming activities.

## Intermediate Stages

The exercise consist of six steps:

1) The first working draft of the application.
2) The rudimentary attack modelling with attack trees.
3) Securing the application according to OWASP top ten.
4) Applying fuzzing tools to the application.
5) Applying static analysis tools to the application.
6) A review on the differences of the secured application
   versus original. 

The number of steps for one exercise might lead to fatigue on part of the
students. For example, it is conceivable that such a large number of reviews is
perceived to unbeareably delay and interrupt the students work. 

We included a few practical factors mitigate getting tired of the exercise.
First, each of the stages is presented to the student as a new exercise and
second, the exercise is spread out throughout the course so that the first step
is taken on the first week, while the last one is returned at the end of the
course. This division into smaller and more concrete parts might help students
to perceive the exercise as a string of related exercises instead of one
monotonous one, which is constantly delayed by the review stages.

Also, by scheduling the review sessions at the start of the course can reduce
the time spent on organising the various reviews on the part of the students.

## Stage Submissions

1) The first working draft of the application. Should
   be available both as running application somewhere and
   as source in our git service.
2) Diagrams of 2-5 attack trees and short textual
   description of each. Also delivered through vcs.
3) Two things
    a) List of issues identified after perusing the OWASP
       top ten.
    b) Patched version of the program, in VCS.
4) Three things:
    a) List of defects uncovered via fuzzing application
        versions before and after step 3.
    b) Patched version of the program if any new defects
       were found.
    c) Short writeup of experiences with fuzzing,
       analysis of the detected defects and usefulness
       of the process.
5) Three things:
    a) List of defects uncovered via static analysis 
       applied to versions after steps 1, 3 and 4.
    b) Patched version of the program, if necessary.
    c) Short writeup of experiences with static analysis,
       some discussion of the detected defects 
       and usefulness of the process.
6) A short essay. 


## Peer Review

I originally planned to have live peer reviews. In general,
at each stage the students are prompted to compare their
output with each other, observing the difficulties between
the various submissions. Each student should pay a special
attention to things they missed, but others didn't. I also
think it would be possible for the students to shortly 
present the results of their review for the whole group.

It appears to me that live peer review sessions must be scheduled as a part of
the course events in the same way the other supervised sessions are. Otherwise
students will have timetabling issues that prevent them from working
efficiently. In practise, booking a single, large, classroom for the review
sessions at the start of the course seems to be an adequate solution for this.
All student groups can review their work at the same time and the timetabling issues
vanish.

Due to practical constraints I believe the review groups
are limited to 3-4 students each. Otherwise we will run
out of time.

At this point, I can't yet think of other prompts than
"Compare what is different from your solution".

## Expert Review

There will not be an expert review due time constraints and scarcity of
available experts. I intend to participate as much as possible in the peer
review process, but I certainly cannot review all solutions.

As stated earlier, I'll try to have students give a short
verbal summary of the review process. This will give me a
way to provide some feedback for the process.

I'd really like to have a rubric for this but don't yet
have a clear idea of how it should be done.

## Grading

I'm slightly against a point by point grading in general,
but I plan to adopt the following scheme, in which
students can gain up to 3 points for each phase:

* Fail to submit the assignment (0 pts).
* Fail to participated in the review session (0 pts).
* Assignment submitted, review taken, but without
  a real effort spent (2pt).
* Assignment submitted, review taken, and effort
  spent (3pt).

The first criterion is checked automatically and the second
and the third are evaluated by me based on how the review
process goes. Having students affect each others grades
directly is a no-go: I don't have resources to ensure that
the process is fair and to handle the potential social
issues that could arise. Also, I fear that underlining the
grading will result in students that are too busy hunting
points that they don't have time to think.  (I've seen
that happen more than once. For a literature of this
phenomenon, see the still timely article, [To Grade or not
to Grade: A Dramatic Discussion in Eleven Parts, 1976,
Klug, B.].)

## Thoughts

The process I have in mind seems somewhat fragile and
it seems to require a full student buy-in to work at all. 

(Here is a short log of how the first practical run of the exercise. Ie.
informal notes which might be interesting, but which are not requested in the
assignment.)

A version of the assignment was presented to students at summer 2014
and 16(will change) students attempted it. The following informal
observations were made:

* General
     - The strict schedule caused some students to not only do the
       programming exercise sloppily but to do the consecutive assignments 
       in a perceived hurry. 
     - The 3 week intensive course format is not really suitable
       for this kind of an exercise as it allows too little time
       to react to student answers.
     - I had the students propose a grading based on the scale described
       above. I was very strict on that the grading was just a suggestion
       and would be rechecked by me. This practise did not work. Diligent
       (female, I might add) students got poor grades from their peers for
       almost perfect work whereas other students got perfect grades for 
       truly poor work.
     - The live review sessions *seem* to work well enough and majority of
       students seem to engage in meaningful discussions. Whether these discussions
       are purely descriptive or actually helpful remains to be seen.
     - There is a slight difficulty with the live reviews, that is, the student
       groups have not been very good at discussing their thoughts after the
       review. Perhaps they have just been describing their own work and have not
       actively engaged in the review process. This hints that leaving the review
       assignment as implicit instead of grading it as a separate assignment might
       not be the best practise.
* Phase 2
     - Due to a bug in the exercise description, almost no student returned
       more than one attack tree. 
     - The most apparent failure point was that students returned answers that
       were on a very general level. That is, many of the attack trees presented
       could have been produced by an average layman. It is clear that these students
       did neither invest time on the exercise nor gain any benefit of it. (The
       exercise also asked to review how useful the trees were and there seems to
       be a correlation between negative views and superficial modelling.)
* Phase 3
     - The exercise returns were slightly lackluster.
     - The students actually told me not to interrupt them when I asked
       how the peer review was going. Atleast they show an interest to each others
       answers. 
     - It seems that without exact questions, the students still cannot properly
       summarise the reviews. Instead of having the groups report their work things
       might work better if individual students could report their experiences. This
       is constrained by available time and teacher resources, however.
