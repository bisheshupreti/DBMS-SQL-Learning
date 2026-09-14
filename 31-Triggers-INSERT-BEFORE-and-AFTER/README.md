# Lab 31 – Triggers — INSERT (BEFORE and AFTER)

## Objective

To learn how to create and use BEFORE INSERT and AFTER INSERT triggers on the `Employee` table.

## Tasks

The following trigger operations were performed:

1. Created a BEFORE INSERT trigger `trg_before_insert_employee` on the `Employee` table.
2. Configured the trigger to set the email to `default@company.com` when the inserted employee has a NULL email.
3. Created an AFTER INSERT trigger `trg_after_insert_employee` to record newly inserted employees in the `Employee_Log` table.
4. Inserted a new employee with a NULL email to test the BEFORE INSERT trigger.
5. Verified that the employee email was automatically set by the trigger.
6. Verified that the `Employee_Log` table was updated by the AFTER INSERT trigger.
7. Displayed all triggers using `SHOW TRIGGERS`.
8. Dropped the `trg_before_insert_employee` trigger.
9. Displayed the remaining triggers again.

## SQL Concepts Learned

* Creating triggers using `CREATE TRIGGER`
* BEFORE INSERT triggers
* AFTER INSERT triggers
* Using `NEW` to access inserted values
* Modifying `NEW` values before insertion
* Using conditional statements inside triggers
* Automatically inserting log records through triggers
* Viewing triggers using `SHOW TRIGGERS`
* Dropping triggers using `DROP TRIGGER`

## SQL File

* `lab31.sql`

## Database Used

```sql
lab_unit7
```

## Tables Used

```text
Employee
Employee_Log
```

## Triggers Created

```text
trg_before_insert_employee
trg_after_insert_employee
```

## Result

The BEFORE INSERT trigger successfully assigned `default@company.com` when an employee was inserted with a NULL email. The AFTER INSERT trigger recorded the inserted employee's ID and the `INSERT` action in the `Employee_Log` table. The BEFORE INSERT trigger was then dropped and the remaining triggers were displayed.

## Practice Reference

**Unit 7 – Lab 31: Triggers — INSERT (BEFORE and AFTER)**
