
This section explores some of the similarities and differences between IFPR and Pair Programming (PP),
and how they may work together, along three dimensions: responsibility, skills developed, and dynamics.


Pair programming is a software development technique in which two programmers work together on
the one computer **cite**. From one perspective, peer programming involves a lot of in-flow
peer feedback, due to the nature of the working relationship. 
The first main difference between the IFPR and PP is that in IFPR each student will 
get multiple reviews from other students. But what about the case where students 
give reviews pairwise, that is, when A reviews B and B  reviews A: 
does this make IFPR closer to PP?
The key difference in this case is that in PP both students are responsible for the
quality of a *single* artefact, whereas in IFPR each student is responsible for
his/her own artefact.  Ultimately, this means that the dynamics is totally different.



The skills required and developed in IFPR and in PP also differ. 
PP deals primarily with the collaborative creation of an artefact.
IFPR focuses also on the creation of an artefact, though less collaboratively
as students do not work face-to-face,
but also focuses on the high-level skill of performing reviews,
which requires both program comprehension and judgement. 
These activities require 
students to take a higher-level perspective on the task at hand,
including the difference between understanding one's own code and
understanding the code of others.
IFPR should also force students to make their work understandable by others,
which in part may be precipitated by reading others code.
IFPR also forces students to trade off work, namely, time spent on their own
assignment versus time spend on doing reviews. This trade-off is not present in PP.
To continue the analogy with academic paper writing and reviewing: PP is more
like working as coauthors, whereas IFPR is more like the relationship
between a journal paper reviewer and an author (especially if there are
multiple IFPR phases).


Due to the difference between solo and shared responsibility for the artefact, the dynamics
of PP and IFPR differ. These differences are highlighted when  by considering the
pairing of strong and weak students together.
For instance, in PP if one student is stronger, then that student may drive the production
of the artefact, or even take over the work, without the weaker student having the opportunity
to participate fully and thus the weaker student may not benefit from the experience.
In IFPR, a strong student's assignment (and hence grade) is not affected by the weak student.
The strong student is in a better position to help the weaker student; although though 
the strong student may receive no beneficial comments, no harm will be done.
With IFPR, any problems due to mismatched pairings can be alleviated
by assigning multiple reviewers.
In practice (in the authors' experience), in PP students often work alone even when expected to 
work collaboratively **citation**.
With IFPR, students are compelled to review other students code.
A final difference is that in IFPR it is easier to ignore the advice given than in PP.

In terms of similarities, encouraging joint work is what makes IFPR similar to PP. 
Indeed, one could even think of PP as providing continuous review.
But working together is a very different activity than producing reviews.  
PP is all about suggesting changes, without necessarily providing critique.  
Both PP and IFPR share reading and understanding, but the act is very different.  
In PP, students can just make edits without necessarily having to justify them in the same way.
In IFPR, comments requires justification.
Ultimately, it is clear that IFPR and PP are different. One is not better than the other, they
just focus on different skills.

*Should look at the peer programming literature for their recommendations on pairing strong/weak students?*


There are a number of ways that PP and IFPR could be combined. The most
obvious one is that each team receives in-flow reviews from one or
more other pairs. A more subtle one is to make pair programming more like
IFPR, by offering continuous feedback, yet keeping two separate artefacts.
In this case, the reviewer takes more responsibility for the other person's artefact. 
It is questionable whether this is a good thing.  One can imagine that if a student's grade
depends upon the quality of another student's artefact, then the best kind of feedback 
would be to  give a patch, that is, to provide replacement code. Such feedback is 
unlikely to help the recipient's understanding.

It is worth considering whether there are differences between pair programming
and pair writing (with review steps). One difference is that reviewers
are likely to provide better feedback on writing than on code, as reading text
is a preexisting skill whereas reading code is a new and difficult skill,
especially for beginning and weak students.


PROBABLY CUT

 **Probably cut the following paragraph**
One interesting possibility is to use IFPR as a prelude to pair programming. That is,
to get students working on their own assignment, giving each other feedback via IFPR, and
then joining forces in a pair programming team in a later phase. That said, this
doesn't quite fit the pair programming model and iut is questionable why one would want
to go through the IFPR hoops to get there.

Too much pair programming leads to problems with students starting when working alone.

We don’t think of Stack Overflow as pair programming.  
So does IFPR sit between these two extremes?

