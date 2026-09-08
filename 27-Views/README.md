# 27 - Views

## Objective

To learn how to create, modify, query, and remove SQL views using the `Student` and `Class` tables.

## Task

Perform different VIEW operations using the `Student` and `Class` tables.

The practical includes:

- Creating a view displaying `student_id`, `name`, and `age`.
- Creating a view displaying student name and class name using `INNER JOIN`.
- Creating a view displaying `class_id` and the number of students in each class.
- Modifying the JOIN view using `ALTER VIEW`.
- Querying the modified JOIN view to display students older than 18.
- Dropping a created view.

## SQL Concepts Learned

- `CREATE VIEW`
- `ALTER VIEW`
- `DROP VIEW`
- `SELECT`
- `INNER JOIN`
- `COUNT()`
- `GROUP BY`
- `WHERE`
- Views based on a single table
- Views based on multiple tables

## SQL File

The SQL implementation for this practical is available in [`lab27.sql`](lab27.sql).

## Result

The required views were successfully created using the `Student` and `Class` tables. A basic student view, a student-class JOIN view, and a class student-count view were created. The JOIN view was modified using `ALTER VIEW` to include student age, queried to display students older than 18, and then dropped successfully.

## Practice Reference

This practical is based on **Experiment 27: Views (CREATE, ALTER, DROP)**.