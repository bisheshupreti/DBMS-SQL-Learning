CREATE DATABASE company;
USE company;

CREATE TABLE department(
	dept_id INT,
    dept_name VARCHAR(100)
    );

CREATE TABLE employee(
	emp_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    dept_id int
    );
    
ALTER TABLE department
ADD CONSTRAINT pk_dept
PRIMARY KEY(dept_id);

ALTER TABLE employee
ADD CONSTRAINT pk_emp
PRIMARY KEY(emp_id);

ALTER TABLE employee
ADD CONSTRAINT uq_emp_email
UNIQUE(email);

ALTER TABLE employee
ADD CONSTRAINT fk_emp_deptid
FOREIGN KEY(dept_id) 
REFERENCES department(dept_id);

ALTER TABLE employee
ADD CONSTRAINT chk_emp_id
CHECK(emp_id>0);


DESC department; 
DESC employee;