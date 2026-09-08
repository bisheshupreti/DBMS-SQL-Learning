# 19 - HAVING Clause

## Objective

To learn how to filter grouped data using the `HAVING` clause together with aggregate functions and the `GROUP BY` clause.

## Task

Perform different filtering operations on grouped student data.

The practical includes:

- Finding `class_id` values having more than 2 students.
- Finding `class_id` values where the total age is greater than 90.
- Finding `class_id` values where the average age is greater than 20.
- Finding `class_id` values having more than 2 students from Kathmandu.

## SQL Concepts Learned

- `HAVING`
- `GROUP BY`
- `COUNT()`
- `SUM()`
- `AVG()`
- `WHERE`
- Column aliases using `AS`
- Filtering grouped data

## SQL File

The SQL implementation for this practical is available in [`lab19.sql`](lab19.sql).

## Result

The grouped student records were successfully filtered using the `HAVING` clause. Aggregate results such as student count, total age, and average age were used as conditions for filtering groups.

The total-age condition was intentionally set to `90` in the SQL implementation.

## Practice Reference

This practical is based on **Experiment 19: HAVING Clause**.