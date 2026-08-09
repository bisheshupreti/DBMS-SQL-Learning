# 08 - Constraint Investigation

## Objective

To investigate table constraints and observe the changes after dropping selected constraints.

## Task

Create `department` and `employee` tables with different constraints, display the table definition, and then remove selected constraints.

The following constraints are used:

- Primary Key
- Unique
- Check
- Foreign Key

After creating the tables:

- Display the complete structure of the `employee` table using `SHOW CREATE TABLE`.
- Drop the foreign key constraint.
- Drop the check constraint.
- Drop the index left after removing the foreign key.
- Display the final table structure using `DESC`.

## SQL Concepts Learned

- `SHOW CREATE TABLE`
- Inspecting table constraints
- Dropping a `FOREIGN KEY`
- Dropping a `CHECK` constraint
- Dropping an index
- Comparing table structure before and after constraint removal

## SQL File

The SQL implementation for this practical is available in [`lab08.sql`](lab08.sql).

## Result

The constraints of the `employee` table were investigated using `SHOW CREATE TABLE`, selected constraints were removed, and the final table structure was displayed using `DESC`.

## Practice Reference

This practical is based on **Practice Set Q8: Constraint Investigation**.