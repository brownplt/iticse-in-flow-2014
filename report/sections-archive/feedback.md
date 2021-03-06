Any use of peer-review must choose whether to include any grading or
feedback on the contents of reviews themselves.  We use the term _meta-review_ to
refer to any feedback on a review (because feedback can be considered
a review of a review).  Feedback can take many forms: the author who
received a review could report on whether the review was constructive
or led to changes, course staff could formally grade reviews and
return comments to the reviewer, or third parties could comment on the
relative merits across a set of reviews.  Which model makes sense
depends on factors including the learning objectives for IFPR,
features of peer-review software, and course logistics (such as staff
size relative to student population).

Much of the group's discussion around meta-reviewing applies to
peer-review in general, rather than only to IFPR.  The IFPR context is
mostly relevant when considering whether reviews are sufficiently
actionable to let students benefit from reviews to improve their own
work.  We describe both general design decisions around meta-reviews
and those particular to IFPR in this section.

### Types of Meta-Review

There are several ways to structure the information in meta-reviews, and
provide useful feedback to reviewers.


- *Rubrics* -- Nelson and Schunn describe a rubric for evaluating peer
  feedback in writing assignments, which includes criteria like the concreteness
  and actionability of the review, and whether it was generally positive or
  negative[cite](nelson-feedback-rubric).  Swan, Shen, and Hiltz study assessment
  strategies for comments in online discussion forums used to discuss class
  content[cite](swan-online-assessment).  Though the discussions are not
  necessarily critiques of student work, they do have similar requirements for
  relevance, accuracy, and usefulness a focused topic.

    According to Ramachandran and Gehringer[cite](rg:auto-assess-rev-lsa)
    reviews consist of (1) summative, (2) problem detection, and (3) advisory
    content.  Meta-reviews can report on each of these three types of contents,
    each of which is valuable in its own way.  While summative contents can
    reflect a reviewer's understanding, problem detection content directly
    helps a student to identify opportunities for improvement, and advisory
    content points out ways in which students might improve.  Meta-reviews can
    include information on which parts of a review were constructive, and which
    led to actual changes.  Meta-reviews written by authors of submissions can
    also include rebuttals to aspects of a review: in IFPR, such rebuttals can
    arise when students are debating the requirements of an exercise through
    the review process (a healthy outcome relative to the goals of IFPR).  In
    the case of rebuttals and follow-ups, this blurs the line between
    collaboration and review, as students may end up coming to a shared
    understanding that may not have occurred with a single review step.

- *Comparison* -- Another way to give feedback is by telling students about the correspondence
between their evaluation of a submission and other evaluations, be they from
experts, other students, or an automated process.

    For example, the SWoRD tool for peer review of writing tells student reviewers,
    on each criteria they reviewed, how they did relative to the average of other
    students' scores[cite](cho-sword).  An example of feedback that they show
    says ``Your ratings were too nice for this set of papers.  Your average rating
    was 6.50 and the group average was 5.23.'' This hints to the student that they
    may have missed something in their review.  This does run into issues of
    calibration and opinion -- just because a student disagrees with the average,
    it doesn't mean they are wrong!  They may have understood something the other
    reviewers didn't, in which case comparing their review to an expert's, or to a
    trusted automated process, may be more useful feedback.

    In CaptainTeach programming assignments, half the time students are assigned a
    known-good or known-bad solution to review, implemented by the course
    staff[cite](politz-ct-iticse14).  They have a Likert scale in their review
    to indicate whether they think the program or tests the are reviewing is
    correct, and if they give a strong score to a known-bad solution, or a weak
    score to a known-good solution, they get immediate feedback telling them of
    the discrepancy.

- *Analysis of Content* -- The Expertiza peer review process contains an explicit review-of-review phase
    for collaborative work[cite](gehringer-expertiza-approach), and a related
    Expertiza tool attempts to give some more qualitative feedback automatically by
    a naturaly language analysis of student work[cite](rg:auto-assess-rev-lsa).
    This automated tool uses an analysis of natural language to give automated
    feedback about the tone and quality of written feedback.

### Using Meta-Reviews

While one generally may prefer to eliminate low quality contents in reviews, 
in a pedagogical context also receiving some low quality review contents can be beneficial. 
While in traditional educational settings students may trust all the feedback they receive from the instructor, 
in IFPR students have to learn to assess the value of the reviews they receive. 
They will have to learn to triage review comments into those they will act upon and those they will ignore. 
Moreover, having a diversity of reviews, 
maybe even contradicting reviews, 
can be a starting point for valuable discussions in class.
The act of triaging reviews themselves can train reviewers to not submit "brain dumps" 
of everything that might possibly be wrong, 
but to provide valuable but concise reviews; the important metric is
actionability, not volume of feedback.

Instructors may seek to use meta-reviews to monitor the IFPR process.
Given the quicker turn-around times inherent to IFPR, such monitoring
benefits from tool support and structural elements of meta-reviews.
For example, asking students to rate the reviews they receive on a
simple Likert scale makes it easy for an instructor to focus on
potentially problematic reviews without undue burden on the students.
In some IFPR configurations, software tools that include automatic
grading could report partial information on whether student
performance improves following the review phase.  Such information
would be most useful for identifying cases in which poor work did not
improve, prompting the instructor to check on whether the author had
received useful and actionable advice through reviews.

Meta-reviewing incurs a cost. 
Whether or not meta-reviews are worth that cost depends on the learning goals: 
if teaching how to review is important, meta-reviews are essential; 
however if the learning goals focus on artifact production or performance, 
and if the reviewers are experienced, 
meta-reviews may be less essential. 
An alternative to providing meta-reviews for each review is to provide a few example reviews and their meta-reviews. 
To not tempt students to simply reuse the best example review comments, 
these exemplar reviews can come from an assignment that is different from the current assignment.


