# Lab 34 – Triggers — Multi-Row Update and Dropping

## Objective

To practice using an `AFTER UPDATE` trigger for auditing salary changes caused by a multi-row update, and to learn how to remove the trigger after use.

## Tasks Performed

1. Use the `lab_unit7` database.
2. Create an `AFTER UPDATE` trigger named `trg_salary_audit_multi`.
3. Insert the employee ID, old salary, and new salary into the `Salary_Audit` table whenever an employee record is updated.
4. Display the existing records from `Salary_Audit`.
5. Increase the salary of all employees belonging to department `1` by `10%`.
6. Display `Salary_Audit` again to verify that multiple salary changes were recorded.
7. Drop the `trg_salary_audit_multi` trigger.
8. Display the remaining triggers using `SHOW TRIGGERS`.

## Concepts Covered

* `AFTER UPDATE` Trigger
* `OLD` and `NEW` values
* Multi-row `UPDATE`
* Salary audit logging
* `Salary_Audit` table
* `DROP TRIGGER`
* `SHOW TRIGGERS`

## SQL File

* `lab34.sql`

## Database Used

```sql
lab_unit7
```

## Tables Used

* `Employee`
* `Salary_Audit`

## Trigger Created

```text
trg_salary_audit_multi
```

The trigger records the following information in `Salary_Audit`:

* Employee ID
* Old salary
* New salary

## Multi-Row Update

The following statement increases the salary of every employee in department `1` by `10%`:

```sql
UPDATE employee
SET salary = salary * 1.10
WHERE dept_id = 1;
```

Because the trigger is defined `FOR EACH ROW`, an audit record is generated for each employee affected by the update.

## Result

The `Salary_Audit` table shows the old and new salary values for the employees whose salaries were increased. After verification, the trigger is dropped and the remaining triggers are displayed using `SHOW TRIGGERS`.

## Practice Reference

This experiment demonstrates how triggers can automatically maintain an audit trail when multiple rows are modified by a single `UPDATE` statement.
