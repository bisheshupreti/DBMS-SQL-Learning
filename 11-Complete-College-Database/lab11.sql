CREATE DATABASE college_management;
USE college_management;

CREATE TABLE Department (
    dept_id INT,
    dept_name VARCHAR(100) NOT NULL,
    floor INT CHECK (floor > 0),
    
    CONSTRAINT pk_dept PRIMARY KEY (dept_id),
    CONSTRAINT uq_dept_name UNIQUE (dept_name)
);

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    age INT,
    address VARCHAR(200) DEFAULT 'Kathmandu',
    dept_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT pk_student PRIMARY KEY (student_id),
    CONSTRAINT chk_student_age CHECK(age>=10 AND age<=65),
    CONSTRAINT uq_student_email UNIQUE (email),
    CONSTRAINT fk_student_dept FOREIGN KEY (dept_id)
        REFERENCES Department (dept_id)
);


DESC Department;
DESC Student;



-- 1. Add a new column 'hod_name' to Department table
ALTER TABLE Department
ADD COLUMN hod_name VARCHAR(100);

-- 2. Modify floor column to not allow NULL values
ALTER TABLE Department
MODIFY COLUMN floor INT NOT NULL;

-- 3. Rename column 'hod_name' to 'head_of_department'
ALTER TABLE Department
RENAME COLUMN hod_name TO head_of_department;

-- 4. Add CHECK constraint on age (already have, but add another)
ALTER TABLE Student
ADD CONSTRAINT chk_student_age18 CHECK (age >= 18);

-- 5. Drop the CHECK constraint added above
ALTER TABLE Student
DROP CHECK chk_student_age18;

-- 6. Add DEFAULT 'N/A' to address (modify existing)
ALTER TABLE Student
ALTER address SET DEFAULT 'N/A';

-- 7. Remove DEFAULT from address
ALTER TABLE Student
ALTER address DROP DEFAULT;

-- 8. Add NOT NULL constraint to dept_id in Student
ALTER TABLE Student
MODIFY dept_id INT NOT NULL;

-- 9. Add a new column 'phone' to Student table
ALTER TABLE Student
ADD COLUMN phone VARCHAR(15);

-- 10. Drop the phone column
ALTER TABLE Student
DROP COLUMN phone;

DESC Department;
DESC Student;
SHOW CREATE TABLE Student;