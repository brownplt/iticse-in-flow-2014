Rubrics serve two important goals in any form of peer review: they
communicate expectations to reviewers (serving as a form of
scaffolding), and they help ensure that all authors receive a certain
level of quality in their feedback.  While these goals suggest highly-structured
rubrics, overly structured rubrics can limit reviewers' and authors'
attention to the questions on the rubric.  They can also provide too
much scaffolding, especially once students need to practice evaluating
work from scratch. The tradeoffs around designing rubrics must balance
these tensions.

Rubric design must consider the rubrics' utility for
the reviewer, the author, and the instructor seeking to
understand how students are performing.  These goals are not
necessarily at odds with one another, but are not necessarily
achievable through the same means.

The working group identified several potential roles for rubrics:

**Rubrics as training wheels:**
    Rubrics can be great as training wheels, especially early in 
    the student's career as a reviewer.  A beginning student who
    is learning to both read and write code might not know where
    to start in critiquing a program.  Prompting with specific questions
    help in situations where students don't yet know how to structure a review
    from scratch.

**Rubrics for focus:**
    A rubric can focus students'
    attention on different areas depending on the goals of an assignment and
    the reviews for it.  For example, it could prompt 
    code-specific questions ("Is this code well-documented?", "Are
    all the type annotations correct?", etc.), to problem-specific questions
    ("Is there a test for a list with duplicate elements?", "Does this
    program meet the problem specification for input X?", etc.), to prompts
    that encourage actionable feedback ("Provide a test case that this
    solution does not pass.").
    Students may also optionally ask for reviews with a certain 
    focus when offering submissions for review. This might help
    to ensure relevance of the review for the author. 

**Rubrics as an alibi:**
    Rubrics can be great tools to establish alibis for reviewers
    who fear criticizing works of others, because of cultural 
    values, self-image, or other factors.  For example, being asked to point
    out one part which could be done better, or identify errors
    will shift the blame from the reviewer who found the bugs
    to the instructor who provided the rubric. 

**Rubrics for reviews of good solutions:**
    In at least one case of using IFPR in the classroom, students reported not
    knowing what to write when reviewing good solutions
    [cite](politz-ct-iticse14).  A rubric could explicitly prompt for feedback
    even on good work (e.g. "What did you like about this submission?", "List
    one thing you would change, regardless of correctness."), so that students
    don't simply sign off on a solution as good enough without reflecting and
    providing some useful feedback.

**Rubrics for conduct:**
    Rubrics can guide students towards a professional and appropriate tone for
    giving feedback, and help frame negative feedback in a constructive way.
    For example, forcing a review to contain comments on the strengths of the
    submission under review can soften other criticism.  When appropriate,
    rubrics can guide students towards more constructive language---for
    example, "This could be done differently" vs. "This is wrong".

**Rubrics for time management:**
    Open-ended review tasks don't make it clear how much time students should
    spend on them.  Just having a specific rubric can make it easier for a
    student to identify when they are done (and estimate the time themselves).
    A rubric could even specify the amount of time that a student should
    spend, and how much on each part of the assignment, to ensure that
    reviewing does not take up more time than intended.


### Different Forms of Reviews

Reviews can take various forms, from written documents to verbal
feedback, from paragraphs to small comments associated with particular
fragments of prose or code, and from individual to group-wide
feedback.  For written reviews, the group noted the general
applicability of plain text, but noted that modern software tools
(such as Github and other graphical version-control tools) enable targeted
comments and conversations
between authors and reviewers, down to the line number in a particular
revision, which is more structure than a general, overall comment.

In some situations, non-text artifacts can be effective, just as not all
submissions need be code.  Code architecture diagrams can be critiqued and
marked up with freehand annotations, pictures of the state of running program
can be drawn, and even code patches can be an effective way to convey
comments.  This is one case in which the default technology that authors of
tools for in-flow peer review might choose could be limiting.

Face-to-face reviews are another form of review, whether solely between
students or moderated by TAs or instructors.  Moderation can make arguments
more constructive, guide discussion towards relevant points, and make a
face-to-face meeting less intimidating.  Moderated review moves the process
more towards a studio-like setting, and may be appropriate especially for
teaching students what is involved in a constructive code review process.
Hundhausen, Agrawal, and Agarwal discuss this kind of in-person review, dubbed
*pedagogical code review*, in early courses [cite](hundhausen-pcr-toce13).  In
pedagogical code review, a small group led by a moderator use a set of
predefined coding practice guidelines to guide a group review of student
programs.

### Evolution of and Variation Within Rubrics

Evolving rubrics across a course or curriculum may offer a good
balance between initial scaffolding (for reviewers and authors) and
eventual opportunities for both groups to demonstrate critical
thinking skills.  One model would evolve rubrics from having fairly
targeted questions to asking broad questions: this model gradually
removes scaffolding.  Another form of evolution starts with concrete
questions (such as "do these tests look correct") and progresses to
questions on more abstract issues (such as "do these tests cover the space of
possible inputs") as students master more of the
subject material.

A variation on evolving rubrics would allow different students to work
with different review forms, depending on their ability as reviewers.
This comment arose from the working group members' experience as PC
members: members often found overly structured forms to be annoying,
feeling they interfered with how they wanted to convey issues with a
work.  However, they also noted that early on in their paper reviewing career,
they appreciated the rubrics' ability to get them past the initial blank form.

A different form of variation might pose more questions to reviewers
than are conveyed to authors.  This situation could make sense when
the review is used to assess the reviewer's understanding of a work,
or when too much information in a review might distract the author
from the critical information in a review.

### Pros and Cons of Rubrics

Reviews contain information that can be used to learn about students'
understanding and evaluate student work.
Detailed and fixed rubrics can facilitate data mining and comparison between
reviews. For
automatic grading of reviews, for instance, fixed structures are clearly 
helpful. Inexperienced students may also benefit from structure when
aggregating the feedback of multiple reviews, for example,
understanding that two or more reviews give
contradictory advice. Two
students discussing reviews (that they are making or have
received) may be similarly helped by an imposed structure.
Statistics or live dashboard reporting in a tool that collects and distributes
reviews is also enabled by more structure.

The ability to lift reviews (or rubrics, if these can be
influenced by students) to the level of the class is another good
example of rubrics for communication. Students or experts might
see common problems which should be communicated to all, either by
sharing sufficiently general comments with the entire class or
even adding an entry to a rubric which brings attention to the issue
in subsequent reviews.

Rubrics provide starting points for discussing reviews in class,
and for helping students to talk about reviews as noted above. On
the downside, rubrics can cause students to focus too narrowly on only the
questions the review asks. Again, the structure
imposed should be guided by a close inspection of the goals of the
particular review: who is it for, what is the intended outcome, and how will
the review's contents be used.

