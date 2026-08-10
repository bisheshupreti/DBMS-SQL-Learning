CREATE DATABASE ab_company;
USE ab_company;

CREATE TABLE department(
	dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL
	);
    
CREATE TABLE employee(
	emp_id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(8,2),
    gender ENUM('MALE','FEMALE','OTHER'),
    dob DATE,
    is_active BOOLEAN DEFAULT TRUE,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    address VARCHAR(100) DEFAULT 'Kathmandu',
    dept_id INT,
    
    CONSTRAINT pk_employee PRIMARY KEY(emp_id),
    CONSTRAINT uq_employee_email UNIQUE(email),
    CONSTRAINT chk_employee_salary CHECK(salary>0),
    CONSTRAINT fk_employee_department FOREIGN KEY(dept_id) REFERENCES department(dept_id)
    );

DESC employee;
SHOW CREATE TABLE employee;


-- Adding new column
ALTER TABLE employee
ADD COLUMN phone CHAR(10); 

-- Modyfing Column VARCHAR(50) to VARCHAR(100)
ALTER TABLE employee
MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- Renamming column 
ALTER TABLE employee
RENAME COLUMN name to emp_name;

-- Adding Constraint
ALTER TABLE employee
ADD CONSTRAINT uq_employee_phone UNIQUE(phone);

-- Removing Constraint
ALTER TABLE employee
DROP CONSTRAINT uq_employee_phone;

-- DROPPING newly added COLUMN
ALTER TABLE employee
DROP COLUMN phone;


-- TRUNCATE VS. DROP
SHOW TABLES;
DESC employee;

TRUNCATE TABLE employee;
SHOW TABLES;
DESC employee;

DROP TABLE employee; 
SHOW TABLES;
-- DESC employee; <This line will give Error as employee table is not exits in ab_company database after DROP>
