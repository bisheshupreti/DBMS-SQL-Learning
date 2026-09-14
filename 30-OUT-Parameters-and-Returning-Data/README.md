# Lab 30 – OUT Parameters and Returning Data

## Objective

To learn how to use OUT parameters in stored procedures and create stored functions that return calculated values from the `Employee` table.

## Tasks

The following operations were performed:

1. Created a stored procedure `GetSalaryInfo` with OUT parameters to return the maximum and average salary of employees.
2. Called `GetSalaryInfo` using user variables and displayed the maximum and average salary.
3. Created a stored procedure `CountEmployeesByDept` with an IN parameter for department ID and an OUT parameter to return the number of employees in that department.
4. Called `CountEmployeesByDept` for department ID `1` and displayed the result.
5. Created a stored function `GetEmployeeCount()` to calculate and return the total number of employees.
6. Called `GetEmployeeCount()` using `SELECT`.
7. Created a stored function `GetAverageSalary(p_dept_id)` to calculate and return the average salary of a particular department.
8. Called `GetAverageSalary(1)` to display the average salary for department `1`.

## SQL Concepts Learned

* Creating stored procedures using `CREATE PROCEDURE`
* Using `IN` and `OUT` parameters
* Using `SELECT ... INTO`
* Passing user variables to stored procedures
* Creating stored functions using `CREATE FUNCTION`
* Returning values using the `RETURN` statement
* Calling functions using `SELECT`
* Using aggregate functions such as `MAX()`, `AVG()`, and `COUNT()`
* Using `DETERMINISTIC` functions

## SQL File

* `lab30.sql`

## Database Used

```sql
lab_unit7
```

## Table Used

```text
Employee
```

## Procedures and Functions Created

```text
GetSalaryInfo
CountEmployeesByDept
GetEmployeeCount
GetAverageSalary
```

## Result

The stored procedures successfully returned maximum salary, average salary, and the number of employees in a department using OUT parameters. Stored functions were also created and executed to return the total number of employees and the average salary of a specified department.

## Note

The Lab 30 question sheet also asks for a separate `GetMaxSalary` procedure using an OUT parameter and an explanation of the difference between an OUT parameter in a procedure and the `RETURN` statement in a function. These parts are not included in the submitted SQL code.

## Practice Reference

**Unit 7 – Lab 30: OUT Parameters and Returning Data**
