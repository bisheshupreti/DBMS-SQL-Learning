-- Using employee table created in Lab 5 from company database
USE company;

ALTER TABLE employee
DROP PRIMARY KEY,
DROP INDEX uq_emp_email,
DROP FOREIGN KEY fk_emp_deptid,
DROP CHECK chk_emp_id;


ALTER TABLE employee
DROP INDEX fk_emp_deptid;


DESC employee;
