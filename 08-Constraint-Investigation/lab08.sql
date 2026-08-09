CREATE DATABASE company;
USE company; 

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(100),
    
    CONSTRAINT pk_dept
    PRIMARY KEY(dept_id)
);

CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    
    dept_id INT,
    
    CONSTRAINT pk_emp PRIMARY KEY (emp_id),
    CONSTRAINT uq_emp_email UNIQUE (email),
    CONSTRAINT chk_emp_salary CHECK (salary > 0),
    CONSTRAINT fk_emp_dept FOREIGN KEY (dept_id)
							REFERENCES department (dept_id)
);


SHOW CREATE TABLE employee;

ALTER TABLE employee
DROP FOREIGN KEY fk_emp_dept,
DROP CHECK chk_emp_salary;

-- Drop the index left after dropping foreign key
ALTER TABLE employee
DROP INDEX fk_emp_dept;

DESC employee;
