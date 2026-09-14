# Lab 35 – Indexing — Create, Show, Drop, Types

## Objective

To practice creating, viewing, and removing different types of indexes in MySQL, including single-column, composite, unique, and full-text indexes.

## Tasks Performed

1. Use the `lab_unit7` database.
2. Create an index on the `Employee.name` column.
3. Create a composite index on `Employee(address, salary)`.
4. Create a unique index on `Employee.email`.
5. Create a `FULLTEXT` index on `Employee.address`.
6. Display all indexes on the `Employee` table.
7. Drop the `idx_employee_name` index.
8. Create a composite index on `Employee(dept_id, salary)`.
9. Drop the `idx_dept_salary` index.
10. Display the indexes on the `Employee` table again.

## Concepts Covered

* `CREATE INDEX`
* Single-column index
* Composite index
* `UNIQUE INDEX`
* `FULLTEXT INDEX`
* `SHOW INDEX`
* `DROP INDEX`
* Indexing for database performance

## SQL File

* `lab35.sql`

## Database Used

```sql id="p3c1xs"
lab_unit7
```

## Table Used

* `Employee`

## Indexes Created

### 1. Employee Name Index

```sql id="f8l7px"
CREATE INDEX idx_employee_name
ON Employee(name);
```

Creates a regular index on the `name` column.

### 2. Employee Address and Salary Composite Index

```sql id="n6n8wu"
CREATE INDEX idx_employee_address_salary
ON Employee(address, salary);
```

Creates a composite index using `address` and `salary`.

### 3. Unique Email Index

```sql id="q4n2ka"
CREATE UNIQUE INDEX idx_employee_email
ON Employee(email);
```

Creates a unique index on the employee email column.

### 4. Full-Text Address Index

```sql id="t1h5zm"
CREATE FULLTEXT INDEX idx_employee_address_fulltext
ON Employee(address);
```

Creates a full-text index on the `address` column.

## Viewing Indexes

The following statement displays the indexes currently defined on the `Employee` table:

```sql id="w2r4vn"
SHOW INDEX FROM Employee;
```

## Dropping Indexes

The `idx_employee_name` index is removed:

```sql id="e5j8qd"
DROP INDEX idx_employee_name
ON Employee;
```

A composite index on department and salary is then created and removed:

```sql id="c7k3mr"
CREATE INDEX idx_dept_salary
ON Employee(dept_id, salary);

DROP INDEX idx_dept_salary
ON Employee;
```

The indexes are displayed again using `SHOW INDEX`.

## Result

The experiment demonstrates how to create different types of indexes on the `Employee` table, inspect existing indexes, and remove indexes when they are no longer required.

The final `SHOW INDEX FROM Employee` confirms the indexes remaining on the table after the specif
