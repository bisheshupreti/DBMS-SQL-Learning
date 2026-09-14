# Lab 37 – MySQL User Creation, GRANT and REVOKE

## Objective

To understand MySQL user creation and access control by creating a user, granting and revoking table privileges, checking user permissions, and testing database operations.

## Tasks Performed

1. Create a database named `USEREXMP`.
2. Create the `user` table with an auto-incrementing primary key and a required `name`.
3. Create a MySQL user named `special`.
4. Grant `SELECT` privilege on the `USEREXMP.user` table.
5. Grant `INSERT` privilege on the `USEREXMP.user` table.
6. Revoke the `INSERT` privilege from the `special` user.
7. Display the privileges granted to `special`.
8. Check the current MySQL user using `SELECT USER()`.
9. Display records from the `user` table.
10. Test inserting a record into the table.
11. Insert multiple records and display the table contents.
12. Test a `DELETE` operation.
13. Test another `INSERT` operation after the `INSERT` privilege has been revoked.
14. Check the current authenticated user using `CURRENT_USER()`.
15. Display the grants for the current user.

## Concepts Covered

* `CREATE DATABASE`
* `CREATE TABLE`
* `CREATE USER`
* `GRANT`
* `REVOKE`
* `SELECT` privilege
* `INSERT` privilege
* `SHOW GRANTS`
* `USER()`
* `CURRENT_USER()`
* MySQL user access control
* Table-level privileges

## SQL File

* `lab37.sql`

## Database Used

```sql
USEREXMP
```

## Table Created

```sql
CREATE TABLE user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
```

The table contains:

* `id` – Auto-incrementing primary key
* `name` – Required field

## MySQL User Creation

The `special` MySQL user is created using:

```sql
CREATE USER 'special'@'%' IDENTIFIED BY '12345';
```

The user is then given `SELECT` and `INSERT` privileges on the `USEREXMP.user` table.

## Granting Privileges

### SELECT Privilege

```sql
GRANT SELECT ON USEREXMP.user TO 'special'@'%';
```

This grants permission to retrieve records from the table.

### INSERT Privilege

```sql
GRANT INSERT ON USEREXMP.user TO 'special'@'%';
```

This grants permission to insert records into the table.

## Revoking INSERT Privilege

The `INSERT` privilege is later removed:

```sql
REVOKE INSERT ON USEREXMP.user FROM 'special'@'%';
```

This demonstrates how a previously granted privilege can be revoked.

## Checking User Privileges

The privileges assigned to the `special` user are checked using:

```sql
SHOW GRANTS FOR 'special'@'%';
```

The currently connected MySQL user is checked using:

```sql
SELECT USER();
```

The authenticated account is checked using:

```sql
SELECT CURRENT_USER();
```

Finally, the privileges of the current user are displayed using:

```sql
SHOW GRANTS FOR CURRENT_USER();
```

## Testing Database Operations

The experiment tests different operations on the `USEREXMP.user` table.

### Display Records

```sql
SELECT * FROM USEREXMP.user;
```

### Insert a Record

```sql
INSERT INTO USEREXMP.user (name)
VALUES ('test');
```

### Insert Multiple Records

```sql
INSERT INTO USEREXMP.user (name)
VALUES ('AAA'), ('BBB'), ('CCC'), ('DDD'), ('EEE');
```

The table is then displayed again to verify the inserted records.

### Test DELETE

```sql
DELETE FROM USEREXMP.user
WHERE id = 1;
```

This tests whether the current account has permission to delete records.

### Test INSERT After REVOKE

```sql
INSERT INTO USEREXMP.user (name)
VALUES ('Test Revoke');
```

This tests the effect of revoking the `INSERT` privilege.

## Result

The experiment demonstrates MySQL access control using user accounts and table-level privileges.

The `special` user is created and given `SELECT` and `INSERT` privileges. The `INSERT` privilege is then revoked, and subsequent database operations are used to observe the effect of the privilege change.

`SHOW GRANTS`, `USER()`, and `CURRENT_USER()` are used to verify the user's identity and privileges.

## Practice Reference

This experiment provides practical experience with MySQL user management and privilege control using `CREATE USER`, `GRANT`, and `REVOKE`.
