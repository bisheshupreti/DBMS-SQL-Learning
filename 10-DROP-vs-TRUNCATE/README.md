# 10 - DROP vs TRUNCATE

## Objective

To understand the difference between `TRUNCATE` and `DROP` by applying both operations to a table.

## Task

Create a `test_student` table and perform the following operations:

- Display the table structure using `DESC`.
- Remove all records from the table using `TRUNCATE TABLE`.
- Verify that the table still exists.
- Display the table structure again.
- Remove the table completely using `DROP TABLE`.
- Verify that the table no longer exists.

## SQL Concepts Learned

- `TRUNCATE TABLE`
- `DROP TABLE`
- Difference between removing table data and removing the table itself
- `SHOW TABLES`
- `DESC`

## SQL File

The SQL implementation for this practical is available in [`lab10.sql`](lab10.sql).

## Result

The `test_student` table was first truncated, leaving the table structure intact. It was then dropped completely and no longer appeared in the database.

## Practice Reference

This practical is based on **Practice Set Q10: DROP vs TRUNCATE**.