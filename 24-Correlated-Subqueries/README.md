# 24 - Correlated Subqueries

## Objective

To learn how to use correlated subqueries where the inner query depends on values from the outer query.

## Task

Perform different correlated subquery operations using the `Student` and `Class` tables.

The practical includes:

- Finding students whose age is greater than the average age of students in their own class.
- Finding students whose `class_id` exists in the `Class` table using a correlated `EXISTS` subquery.

## SQL Concepts Learned

- Correlated Subqueries
- `EXISTS`
- `AVG()`
- Comparison Operators
- Table Aliases
- Nested `SELECT` statements
- Outer and Inner Query Relationship

## SQL File

The SQL implementation for this practical is available in [`lab24.sql`](lab24.sql).

## Result

The required student records were successfully retrieved using correlated subqueries. The first query compared each student's age with the average age of students in the same class, while the second query verified the existence of the student's class in the `Class` table using `EXISTS`.

## Practice Reference

This practical is based on **Experiment 24: Correlated Subqueries**.