# 13 - INSERT Statement

## Objective

To learn how to insert single and multiple records into a table using different `INSERT` statement syntaxes and create a backup table using `INSERT INTO ... SELECT`.

## Task

Perform different `INSERT` operations on the `Student` table.

The practical includes:

- Inserting a single student record.
- Inserting multiple student records in a single query.
- Inserting a student record using `INSERT INTO ... SET` syntax.
- Inserting a student record using the default value for `address`.
- Creating a backup table with the same structure as the `Student` table.
- Copying students aged 18 or above into the backup table using `INSERT INTO ... SELECT`.
- Displaying records from both `Student` and `Student_Backup` tables.

## SQL Concepts Learned

- `USE`
- `INSERT INTO`
- `VALUES`
- Multiple Row Insert
- `INSERT INTO ... SET`
- `DEFAULT`
- `CREATE TABLE ... LIKE`
- `INSERT INTO ... SELECT`
- `SELECT`
- `WHERE`

## SQL File

The SQL implementation for this practical is available in [`lab13.sql`](lab13.sql).

## Result

Student records were inserted successfully using different `INSERT` statement methods. A `Student_Backup` table was created with the same structure as the `Student` table, and students aged 18 or above were copied successfully into it.

## Practice Reference

This practical is based on **Experiment 13: INSERT Statement**.