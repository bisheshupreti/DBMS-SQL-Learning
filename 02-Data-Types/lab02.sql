use college;

CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(8,2),
    dob DATE,
    gender ENUM('MALE', 'FEMALE', 'OTHER'),
    isActive BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
    
DESC employee;