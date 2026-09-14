# Lab 36 – Indexing — Multiple Key Access and Optimization

## Objective

To understand how a composite index affects query execution and how MySQL uses multiple key columns for query optimization.

## Tasks Performed

1. Create a composite index on `Employee(dept_id, salary)`.
2. Test a query filtering only by `dept_id`.
3. Test a query filtering by both `dept_id` and `salary`.
4. Test a query filtering only by `salary`.
5. Use `EXPLAIN` to check the execution plan for each query.
6. Drop the composite index.
7. Run `EXPLAIN` again for the same queries.
8. Compare the execution plans before and after dropping the index.
9. Observe how the order of columns in a composite index affects index usage.

## Concepts Covered

* Composite Index
* Multiple-Key Index
* Query Optimization
* `EXPLAIN`
* Index Usage
* Query Execution Plans
* Leftmost Prefix Rule

## SQL File

* `lab36.sql`

## Database Used

```sql
lab_unit7
```

## Table Used

* `Employee`

## Composite Index Created

```sql
CREATE INDEX idx_dept_salary
ON Employee(dept_id, salary);
```

The composite index contains two columns:

1. `dept_id`
2. `salary`

## Queries Tested

### Query 1 – Filter by Department

```sql
SELECT * FROM Employee
WHERE dept_id = 1;
```

This query uses the first column of the composite index.

### Query 2 – Filter by Department and Salary

```sql
SELECT * FROM Employee
WHERE dept_id = 1
AND salary > 50000;
```

This query uses both columns of the composite index.

### Query 3 – Filter by Salary Only

```sql
SELECT * FROM Employee
WHERE salary > 50000;
```

This query does not match the leftmost column of the composite index.

## Checking Execution Plans

The `EXPLAIN` statement is used to inspect how MySQL executes each query:

```sql
EXPLAIN SELECT * FROM Employee WHERE dept_id = 1;

EXPLAIN SELECT * FROM Employee
WHERE dept_id = 1 AND salary > 50000;

EXPLAIN SELECT * FROM Employee
WHERE salary > 50000;
```

The execution plans can be compared to determine whether and how the composite index is used.

## Dropping the Index

The composite index is removed using:

```sql
DROP INDEX idx_dept_salary
ON Employee;
```

The same queries are then analyzed again with `EXPLAIN`.

## Result

The experiment demonstrates how a composite index can improve query access when the query uses the indexed columns in the appropriate order.

The comparison of `EXPLAIN` results before and after dropping the index helps identify the effect of the index on query execution.

The experiment also demonstrates the **leftmost prefix rule**: for an index on `(dept_id, salary)`, queries using `dept_id` can take advantage of the index, while a query using only `salary` cannot normally use the composite index in the same way.

## Practice Reference

This experiment builds on the previous indexing lab and introduces practical query optimization using composite indexes and `EXPLAIN`.
