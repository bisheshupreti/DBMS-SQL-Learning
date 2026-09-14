# Lab 29 – Stored Procedure — Insert, Update, Delete

## Objective

To learn how to perform INSERT, UPDATE, and DELETE operations on the `Employee` table using stored procedures with input parameters.

## Tasks

The following stored procedure operations were performed:

1. Created a stored procedure `InsertRecords` to insert employee records into the `Employee` table.
2. Executed `InsertRecords` and verified the changes using `SELECT`.
3. Created a stored procedure `DeleteRecord` with an input parameter to delete an employee based on employee ID.
4. Executed `DeleteRecord` for employee ID `5` and verified the changes.
5. Created a stored procedure `UpdateRecords` with input parameters for name, address, and salary to update an employee based on salary.
6. Executed `UpdateRecords` and verified the updated employee record.
7. Created a stored procedure `UpdateRecords1` with input parameters for employee ID, old salary, name, and new salary to update an employee based on employee ID and salary.
8. Executed `UpdateRecords1` and verified the changes using `SELECT`.

## SQL Concepts Learned

* Creating stored procedures using `CREATE PROCEDURE`
* Using `IN` parameters
* Performing `INSERT` operations inside stored procedures
* Performing `UPDATE` operations inside stored procedures
* Performing `DELETE` operations inside stored procedures
* Passing values to procedures using `CALL`
* Verifying database changes using `SELECT`
* Using multiple input parameters in stored procedures

## SQL File

* `lab29.sql`

## Database Used

```sql
lab_unit7
```

## Table Used

```text
Employee
```

## Stored Procedures Created

```text
InsertRecords
DeleteRecord
UpdateRecords
UpdateRecords1
```

## Result

The stored procedures were created and executed to perform INSERT, DELETE, and UPDATE operations on the `Employee` table. The changes were verified using `SELECT` statements after each procedure execution.

## Practice Reference

**Unit 7 – Lab 29: Stored Procedure — Insert, Update, Delete**
