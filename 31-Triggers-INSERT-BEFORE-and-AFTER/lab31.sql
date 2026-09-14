USE lab_unit7;

DELIMITER $$
CREATE TRIGGER trg_before_insert_employee
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL THEN
        SET NEW.email = 'default@company.com';
    END IF;
END$$

CREATE TRIGGER trg_after_insert_employee
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log (emp_id, action)
    VALUES (NEW.emp_id, 'INSERT');
END$$

DELIMITER ;

INSERT INTO Employee (name, email, address, salary, gender, dob, dept_id)
VALUES ('GH', NULL, 'Kathmandu', 55000, 'Male', '1996-01-01', 1);

SELECT emp_id, name, email FROM employee;

SELECT * FROM employee_log LIMIT 3; 

SHOW TRIGGERS;

DROP TRIGGER trg_before_insert_employee;

SHOW TRIGGERS;