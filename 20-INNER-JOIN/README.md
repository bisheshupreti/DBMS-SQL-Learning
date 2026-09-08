# 20 - INNER JOIN

## Objective

To learn how to combine related data from the `Student` and `Class` tables using the `INNER JOIN` clause.

## Task

Perform different INNER JOIN operations using the `Student` and `Class` tables.

The practical includes:

- Displaying student names along with their class names.
- Displaying student name, age, section, and class name.
- Displaying students older than 20 along with their class information.
- Displaying each class name and the number of students in that class.

## SQL Concepts Learned

- `INNER JOIN`
- `ON`
- Table aliases
- Joining related tables using a foreign key
- `WHERE` with `INNER JOIN`
- `COUNT()` with `INNER JOIN`

## SQL File

The SQL implementation for this practical is available in [`lab20.sql`](lab20.sql).

## Result

The `Student` and `Class` tables were successfully joined using the common `class_id` column. Student and class information was retrieved together, including filtered results for students older than 20 and student counts for each class.

## Practice Reference

This practical is based on **Experiment 20: INNER JOIN**.