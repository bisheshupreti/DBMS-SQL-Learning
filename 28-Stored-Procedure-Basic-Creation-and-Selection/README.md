# Lab 28 – Stored Procedure — Basic Creation and Selection

## Objective

To learn how to create, execute, drop, and inspect stored procedures in MySQL using the `Employee` table.

## Tasks

The following stored procedure operations were performed:

1. Created a stored procedure `SelectRecords` to select all records from the `Employee` table.
2. Created a stored procedure `MyEmployees` with an input parameter to select employees based on their address.
3. Created a stored procedure `MyEmployees1` with input parameters for department ID and address.
4. Executed `SelectRecords`.
5. Executed `MyEmployees` with the address `Kathmandu`.
6. Executed `MyEmployees1` with department ID `1` and address `Kathmandu`.
7. Dropped the `SelectRecords` stored procedure.
8. Displayed all stored procedures in the current database using `SHOW PROCEDURE STATUS`.
9. Displayed the complete definition of `MyEmployees` using `SHOW CREATE PROCEDURE`.

## SQL Concepts Learned

* Creating stored procedures using `CREATE PROCEDURE`
* Using `IN` parameters
* Using `BEGIN` and `END`
* Changing the statement delimiter with `DELIMITER`
* Executing stored procedures with `CALL`
* Dropping stored procedures using `DROP PROCEDURE`
* Viewing stored procedures with `SHOW PROCEDURE STATUS`
* Viewing a procedure definition with `SHOW CREATE PROCEDURE`

## SQL File

* `lab28.sql`

## Database Used

```sql
lab_unit7
```

## Table Used

```text
Employee
```

## Result

The stored procedures were successfully created and executed to retrieve employee records based on the required conditions. The `SelectRecords` procedure was dropped, and the remaining procedures were inspected using MySQL's procedure status and definition commands.

## Practice Reference

**Unit 7 – Lab 28: Stored Procedure — Basic Creation and Selection**
