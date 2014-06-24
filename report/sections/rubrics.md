Rubrics
=======

In this section, we discuss different aspects of using rubrics to
guide and influence the review work, and to facilitate comparison,
automatic checking, etc. A live demonstration of for example how
to do a code review is a form of scaffolding on the process-level,
but does drive content as specficially as rubrics. Regardless of
how reviewing is introduced and scaffolded, it is important to
allot time to deal with misconceptions on how to create a review
as part of the course design. 

Rubrics impose some structure on a review. What is a good
structure for a certain course naturally depends on the students
(level, dedication, volumes, diversity, etc.) and the context of
the assignment. The structured imposed by rubrics can be
constraining or liberating. As we will discuss below, different
degree of structure can be appropriate at different stages of a
course or a curriculum.

An important first question to ask for rubric design is its
intention: is the goal foremost to increase the quality of the
feedback to the reviewee, mostly to influence the thoughts of the
reviewer, or a balance of both. Focus on the reviewer or the
reviewee are not necessarily at odds with each other, but are also
not necessarily achievable through the same means. For example,
certain questions for the reviewer to ponder might not be
considered a part of the "formal review" to lower the overhead on
the reviewee's side when there is more focus on the reviewer.


Design Parameters of Rubrics
----------------------------

In addition to the initial question of who is the review for, we
have so far identified a number of design parameters for reviews.

Rubrics as support wheels
:   Rubrics can be great as support wheels, especially early in 
    the student's career as a reviewer

Rubrics for focus
:   Rubrics can be used to shift focus from certain aspects to 
    others during a course. This will prevent students from 
    regurgitating different versions of a single review, and also
    reinforce courses where focus shifts during the course. 
    For example, early in the course reviews can focus on functional
    aspects and gradually shift to non-functional aspects of code. 
    Students may also optionally ask for reviews with a certain 
    focus when offering up artefacts for review. This might help
    to ensure relevance of the review for the reviewee.  

Rubrics for alibi
:   Rubrics can be great tools to establish alibies for students 
    who fear criticising works of others, because of cultural 
    values, self-image, etc. For example, being asked to point
    out one part which could be done better, or identify errors
    will shift the blame from the student that found the bugs
    to the instructor that asked the questions. 

Rubrics for conduct
:   Focusing on the strengths of the artefact under review can 
    also help unstuck students that fear critiquing works of 
    others, but also may be used as a tool to foster professional
    conduct. "Being hard on the issue but soft on the people" can 
    be learned this way. 

Rubrics for time-boxing
:   This is similar to Rubrics for focus, but here the goal is 
    to control how much time is spent on certain aspects of an 
    artefact rather than focusing on just a subset. 


Evolution of Rubrics
--------------------

Althought there are things to say for consistency, rubrics need
not stay the same throughout a course, and definitely not when
used througout a curriculum. 

For example, it is possible to gradually transition rubrics from
specific to general as students mature as reviewers. We make an
analogy to conference reviewing -- often less mature PC members
like that reviews are made up of many small steps which are tied
to specific questions, but experienced PC members often develop a
more free-form format and percieve structure in reviews as an
obstacle. 

On a similar note, it is also possible to transition rubrics from
high-level to detailed as students mature as reviewers. While
high-level reviews can of course require deeper insight to have a
high quality, for students inexperienced in the subject, "low
quality" high-level comments may still be very valuable, and not
until a certain level of mastery is achieved are the able to go in
an make detailed reviews about specific aspects of an artefact.


Pros and Cons of Rubrics
------------------------

An important aspects of rubrics is their usage to carry data.
While very detailed and fixed rubrics can be bad in certain ways,
they facilitate data mining and comparison between reviews. For
automatic grading of reviews, fixed structures are clearly very
helpful. Inexperienced students may also be helped to compare
reviews -- either their quality or understand that they give
contradictory advice -- if the reviews are less free-form. Two
students discussing reviews (that they are making or have
received) may be similarly helped by an imposed structure.

The ability to lift reviews (or rubrics, if these can be
influenced by students) to the level of the class is another good
example of rubrics for communication. Students or experts might
see common problems which should be communicated to all, either by
sharing sufficiently general comments with the entire class or
adding a rubric to all reviews which brings attention to the issue
in subsequent reviews.

On a similar note, peer review can be used to curate problems
invented by students for a practice problem set, and practice
problem set improved over years.

Rubrics provide starting points for discussing reviews in class,
and for helping students to talk about reviews as noted above. On
the downside, rubrics can cause students to lock their mind to a
certain format or focus. This can be mitigated by giving examples
very different from the specific task. Again, the structure
imposed should be guided by a close inspection of the goals of the
particular review: who is it for, what is the intended outcome,
etc.


Specific Forms of Reviews
-------------------------

As was noted above, input from the reviewee (e.g., on where the
review should focus) might increase the relevance of the review
for the student. On the side of the reviewer, similar buy-ins
could be achieved by giving a selection of different sets of
rubrics, thereby allowing for a choice of what is most effective
for this situation/for me/etc. Also, getting a student to look at
multiple sets of rubrics is likely to improve their review
regardless of what format they pick or whether they roll their
own. One specific possibility is to provide rubrics as free-form
text, which may be removed, appended and changed freely.

Face-to-face reviews might be intimidating, regardless of the
involvement of experts. Non-expert TAs can be useful to moderate
face-to-face reviews and enforce a civil tone. Face-to-face
reviews clearly have the benefit of establishing a low-latency
feedback loop, but takes practise to be time-effective. 

Plain text is a very standard form of review, but may benefit from
augmentation. For example, annotations like lines and arrows
between places, highlighting problematic parts or stamping
hieroglyphs with predefined semantics for common issues.

For code, a patch might be a very suitable form of review,
together with version control-like comments.

For tests, good rubrics concern whether inputs are representative
and correctness of outputs.

For writing, good rubrics include completion, timeliness, value of
contributions.

* Things I might leave out for those who know it better
** see Klemmer’s paper for Coursera
*** http://www.cogsci.ucsd.edu/~mboyle/COGS1/readings/Klemmer-COGS1-Peer%20and%20self%20assesment%20in%20massive%20online%20classes.pdf
** what Jay McCarthy did
** Reference to track down (SK): Instructor sees a bug, writes a test case, and runs test case on all other submissions

%%% Local Variables: ***
%%% mode: org ***
%%% ispell-local-dictionary: "british"  ***
%%% End: ***
