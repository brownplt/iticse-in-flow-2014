# Assignment Name

scripting

## Course Context

To be offered for the first time in Fall 2014. This is a third-semester course on ``programming methodology'' using Scala. The students have one year of Java experience. This is the final homework assignment in the course.

## Assignment

Students have to writer a parser to parse records from a made-up file format,
map each record to a reasonable type and write functions to answer queries
over the data. A likely data source is publicly available
campaign finance information. Likely queries include questions such
as, "who received the most money?"

## Educational Goals

- Primary goal: Learn how to parse data with parser combinators.
- Reinforcement: Implement group/order/filter queries using Scala collections.
- Extra credit: implement indexes to speed up certain queries.

## Intermediate Stages

1. Write a parser.
2. Write several small examples of valid and invalid files.
3. Write and test query functions over small examples.
4. Test parser and query functions on real data.

## Stage Submissions

Assignment is out Tuesday and due the next Tuesday.

- Stage 1--2 due on Friday.
- Stage 3--4 due Tuesday.
-
## Peer Review

The parser should be robust and not accept invalid inputs. This will be
students' first experience programming with regular expressions and
a DSL. I expect students will be able to review each others completed
parsers and suggest bug fixes or cleaner implementations.

Prompt: Is this parser correct and clear? Can it be refactored
to make it easier to understand?

## Expert Review

No expert review.

## Grading

Parsers can be automatically tested with hand-crafted bad input.

We'll grade parsers twice: before and after review. Exact weights
to be determined. I'm not sure how to give students credit for
providing good reviews. Have other students review reviews? Sounds
messsy and easily gameable.

## Thoughts

No more thoughts.
