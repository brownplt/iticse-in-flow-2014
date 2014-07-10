The IFPR process requires assigning reviewers to artifacts
for review.  There are a few criteria for doing so that are especially
important in IFPR, and which can be in tension:

1. **Timeliness**: An explicit goal of IFPR is to give feedback in
time for a student to apply it to their work.  If the process waits too long
to assign and perform reviews (e.g. because students are working on different
schedules), then the value of the review is diminished
2. **Availability**: In cases of IFPR that don't have intermediate deadlines
for different stages, it is important that students don't get stuck for long waiting
for reviews to become available before they can continue with their
assignment.  This requires that there always be some solutions available to
assign, which may mean assigning instructor-provided solutions to the first
few students to submit.
3. **Workload**: One potential challenge for IFPR is that since the reviews
happen during the assignment, they potentially increase workload and interfere
with the workflow of the assignment.  As a result, volume needs to be
considered, as assigning too many reviews in a particular step can cause the
process to be more onerous than helpful.
4. **Utility to Reviewer**: The reviewer, as well as the author, benefits in
IFPR, from
seeing and reflecting on examples of other solutions while working on the
assignment.  This could mean that a variety of solutions are good to present,
both in terms of varying quality and in varying solution approaches.

Review assignment strategies should consider these criteria, and where they
make tradeoffs between them.  The working group identified 5 different
assignment patterns.  These patterns are:

1. **random**, where the available reviewers are randomly assigned,
2. **temporal order**, where the earliest answer without a review
   is assigned the first available reviewer,
4. **stratified**, where the reviewers are assigned according an external
   factor such as past performance, student choice, or other factors, and the
3. **pre-defined**, where the review schedule is defined before the exercise,
5. **market model**, where students buy and sell reviews.

The review assignment schemes can be modified in two primary ways:

1. **persisting** the reviewer assignments so that same student reviews
   work of another throughout a single exercise, course or even a 
   semester, and having
2. **mutual reviews**, where student both reviews and receives reviews
   from the same peer.

Each of the assignment patterns represent different point in the design space
of in-flow review process. In the following sections, we discuss the benefits
and disadvantages that these patterns have.

### Random assignment
 
Random selections are the simplest method for reviewer assignment. In an
in-flow setting, however, random selections will be biased according to when
students submit their work. Those students who submit work early are more
likely to receive work to be reviewed from students who also submitted early.
This effect can be detrimental in some contexts and can be migitated with
intermediate deadlines that avoid biasing.  The need for intermediate
deadlines causes delays for students who would otherwise be able to begin
reviewing immediately, interrupting their flow through the assignment.

### Temporal order

Assigning reviewers by temporal order can help minimize the time to receiving
a review.  If submissions are served to reviewers in a simple first-in,
first-out queue, and assuming that students take about the same amount of time
to review, then this gives students the fastest turnaround time on feedback.
This is the strategy used in Captain Teach[cite](politz-ct-iticse14), where
the mean time to the first review was on the order of 2-5 hours in week-long
assignments.

It does have the potential issue of grouping students by submission time,
which may correlate with achievement levels, student social groups, or other
factors that may affect the review process.  If students know that temporal
order is applied, they can also coordinate to time submissions so they will
review one another (or not).  It isn't clear if this (ab)use of the system is
harmful or not, but it should be taken into account because it has
consequences for the fairness of the system.


### Stratified

The IFPR process allows the teacher to collect data on student performance and
this information can be used to make informed decisions in assigning
reviewers. For example, if the IFPR process employed allows students to give
feedback on the reviews, it possible to try to ensure that each student
receives helpful feedback by matching students that have been helpful
reviewers with those students who have not received quality feedback.  

Other stratification schemes include assigning reviewers to authors based on their
observed skill levels. This allows the teacher to assign performant students to
review to the less performant students or vice versa. We however note that
deciding which sort of pairing should be preferred over another is context
dependent (CITE Fincher&Petre).  It is also not clear that the task
performance is an indicator to performance as a
reviewer[cite](nelson-feedback-rubric).

### Predefined

We call the assignment of author-reviewer pairs and review schedule before the
assignment begins a *predefined* review assignment.  If not anonymous, this
could allow students to coordinate with their reviewer to make optimal use of
their time on the assignment.  Even when reviewing is anonymous or partially
anonymous (we discuss anonymity more in [REF]), it can allow the IFPR
instructor to ensure that reviews are assigned evenly, and use their knowledge
of students' schedules and inclinations to attempt a fair and effective review
distribution.

Predefining the reviewer assignments also allows stratification of the review
process by various metrics. For example, students can be paired according to
their interests, skill levels or any other such factor that is known before
the course.  In addition, as a course goes on and the instructor accumulates
data about and experience with their students, it may be clear that particular
pairings of students are especially (in)effective.  If live review sessions
are planned, the recommended way of arranging them is to schedule them early
on, so a predefined assignment may be the only practical choice. On the
negative side, predefined schedule can be more fragile in face of changes,
such students leaving the course.


### Market model

Assigning reviewers with a market scheme attaches an external benefit on
writing reviews and an external cost to consuming the reviews.  This model
acknowledges that reviews are essentially a limited resource and that they have
an innate cost in time that the student can spend on other activities.

Besides being grounded on reality, market schemes can be seen as a way for
increasing student self-direction by allowing students to focus on activities
that are meaningful for them. As an example, student may spend their resources
to receive additional reviews on a difficult parts of the course, which can
increase performance and motivation.

However, the working group found several issues with the market model.
First and foremost, introducing review markets creates a complex dynamic
system involving people, making it probable that subtle
changes produce significant and unexpected effects.  For example,
assigning market value to reviews can emphasise external motivation (CITE
Ryan&Deci, Klugg) on part of the students and de-emphasize the observed
benefits of giving reviews. Another concrete effect that was observed by
a working group member was that underlining the limitedness of the
resources can cause students to instinctively conserve their resources to
their own disadvantage.  Further, the working group made note of a risk
of focusing student attention to the market dynamics instead of the
course content. (CITE?) 

In summary, applying market dynamics to the review process is feasible but
doing so must be considered from the perspective of the culture in which the
education takes place and from the perspective of the educational philosophy
employed.

### Persistence as a modifier

The in-flow process often requires multiple review tasks to be completed during
a single exercise, which gives rise to the design decision whether to make new
reviewer assignments at each review, or just once per exercise. It was observed
by Politz et. al [cite](politz-ct-iticse14) that switching reviewers
during the same exercise led to increased student workloads, as the students
needed to familiarize themselves several different submissions.  We conjecture
that
persisting the same reviewer over a whole exericse could lessen student
workloads, but that it could also diminishes the variety of the reviews each
student is exposed to. 

Persisting the reviewer over several exercise stages gives rise to several
potential problems in social interactions between students. If collaborative
cheating is an issue in the context where IFPR is applied, persisting the
reviewers must also be carefully considered. Persistence also limits the 
the choices of how to implement anonymity, since revealing identity early
necessarily reveals identity on later stages.

Benefits of persistence are also related to the size of the exercise --
longer exercises that have more stages can benefit more from persisting
reviewers than shorter exercises, where the cognitive overhead of
understanding new solutions is lessened.

### Mutuality as a modifier

Another potential tweak to reviewing assigns mutual author-reviewer pairs.
That is, students are assigned to review one another's work in mutual pairs.
This may align motivation more, especially if students can refine and update
their reviews after the fact, because giving help to directly to one's
reviewer may more directly encourage them to reciprocate.

Mutual reviews with a conversational element drift closer to pair programming,
which we discuss later [REF].  Mutual reviewers may end up deciding that one
solution is objectively better than the other, or arriving at effectively a
single solution that combines the original approaches.  Depending on the goals
of the assignment, this could be a desired or undesired outcome: it may become
quite important to evaluate the students' pre-review submissions to
distinguish individual work from joint work.


