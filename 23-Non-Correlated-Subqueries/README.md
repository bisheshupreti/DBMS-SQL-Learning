# 23 - Non-Correlated Subqueries

## Objective

To learn how to use non-correlated subqueries with `IN`, aggregate functions, comparison operators, and `EXISTS` to retrieve related data from the `Student` and `Class` tables.

## Task

Perform different non-correlated subquery operations using the `Student` and `Class` tables.

The practical includes:

- Finding students whose `class_id` belongs to classes having more than 2 students.
- Finding students whose age is greater than the average age of all students.
- Finding students who belong to the same class as a specific student.
- Finding students who have an assigned class using `EXISTS`.

## SQL Concepts Learned

- Non-Correlated Subqueries
- `IN`
- `EXISTS`
- `GROUP BY`
- `HAVING`
- `COUNT()`
- `AVG()`
- Comparison Operators
- Nested `SELECT` statements

## SQL File

The SQL implementation for this practical is available in [`lab23.sql`](lab23.sql).

## Result

The required student records were successfully retrieved using non-correlated subqueries. Subqueries were used to identify classes with more than 2 students, compare student ages with the overall average age, find students in the same class, and verify assigned classes using `EXISTS`.

## Practice Reference

This practical is based on **Experiment 23: Non-Correlated Subqueries**.