# 07 - Dropping Constraints

## Objective

To remove different constraints from an existing table using `ALTER TABLE`.

## Task

Using the `employee` table created in Lab 5, remove the following constraints:

- Primary key
- Unique constraint on `email`
- Foreign key on `dept_id`
- Check constraint on `emp_id`

## SQL Concepts Learned

- `DROP PRIMARY KEY`
- `DROP INDEX`
- `DROP FOREIGN KEY`
- `DROP CHECK`
- Removing constraints using `ALTER TABLE`

## SQL File

The SQL implementation for this practical is available in [`lab07.sql`](lab07.sql).

## Result

The specified constraints were successfully removed from the `employee` table, and the final table structure was displayed using `DESC`.

## Practice Reference

This practical is based on **Practice Set Q7: Dropping Constraints**.