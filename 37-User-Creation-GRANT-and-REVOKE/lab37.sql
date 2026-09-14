CREATE DATABASE USEREXMP;
USE USEREXMP;

-- 1. Create user table
CREATE TABLE user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. Create MySQL user
CREATE USER 'special'@'%' IDENTIFIED BY '12345';

-- 3. Grant SELECT privilege
GRANT SELECT ON USEREXMP.user TO 'special'@'%';

-- 4. Grant INSERT privilege
GRANT INSERT ON USEREXMP.user TO 'special'@'%';

-- 5. Revoke INSERT privilege
REVOKE INSERT ON USEREXMP.user FROM 'special'@'%';

-- 6. Check privileges of special user
SHOW GRANTS FOR 'special'@'%';




-- ====================================================================================
-- ====================================================================================

-- 7. Check current MySQL user

-- ====================================================================================
-- ====================================================================================




SELECT USER();

-- 8. Display records from user table
SELECT * FROM USEREXMP.user;

-- 9. Test INSERT before/after privilege changes
INSERT INTO USEREXMP.user (name) VALUES ('test');

-- 10. Insert multiple records
INSERT INTO USEREXMP.user (name)
VALUES ('AAA'), ('BBB'), ('CCC'), ('DDD'), ('EEE');

SELECT * FROM USEREXMP.user;

-- 11. Check DELETE privilege
DELETE FROM USEREXMP.user
WHERE id = 1;

-- 12. Test INSERT after REVOKE
INSERT INTO USEREXMP.user (name)
VALUES ('Test Revoke');

-- 13. Check current authenticated user
SELECT CURRENT_USER();

-- 14. Show grants for current user
SHOW GRANTS FOR CURRENT_USER();