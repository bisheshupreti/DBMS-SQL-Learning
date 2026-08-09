# 06 - Column Properties

## Objective

To modify column properties using `ALTER TABLE`.

## Task

Create a `student` table and perform the following operations:

- Add `NOT NULL` constraint to the `name` column.
- Add `AUTO_INCREMENT` to the `student_id` column.
- Set a default value for the `address` column.
- Change the default value of `address`.
- Remove the `NOT NULL` constraint from `name`.
- Remove `AUTO_INCREMENT` from `student_id`.
- Drop the default value from `address`.
- Display the final table structure using `DESC`.

## SQL Concepts Learned

- `MODIFY COLUMN`
- `NOT NULL`
- `AUTO_INCREMENT`
- `ALTER ... SET DEFAULT`
- `ALTER ... DROP DEFAULT`

## SQL File

The SQL implementation for this practical is available in [`lab06.sql`](lab06.sql).

## Result

The column properties of the `student` table were successfully modified, and the final table structure was displayed using `DESC`.

## Practice Reference

This practical is based on **Practice Set Q6: NOT NULL, DEFAULT & AUTO_INCREMENT**.