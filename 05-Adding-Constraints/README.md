# 05 - Adding Constraints

## Objective

To add different constraints to existing tables using `ALTER TABLE`.

## Task

Create `department` and `employee` tables and add the following constraints:

- Primary key on `department.dept_id`
- Primary key on `employee.emp_id`
- Unique constraint on `employee.email`
- Foreign key on `employee.dept_id` referencing `department.dept_id`
- Check constraint to ensure `emp_id` is greater than 0

## SQL Concepts Learned

- Adding `PRIMARY KEY` using `ALTER TABLE`
- Adding `UNIQUE` constraints
- Adding `FOREIGN KEY` constraints
- Adding `CHECK` constraints
- Using named constraints
- Referencing a column from another table

## SQL File

The SQL implementation for this practical is available in [`lab05.sql`](lab05.sql).

## Result

The required constraints were successfully added to the `department` and `employee` tables, and their structures were displayed using `DESC`.

## Practice Reference

This practical is based on **Practice Set Q5: Adding Constraints with ALTER TABLE**.