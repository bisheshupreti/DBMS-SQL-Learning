USE lab_unit7;

DELIMITER $$
CREATE TRIGGER trg_before_delete_employee
BEFORE DELETE ON Employee
FOR EACH ROW
BEGIN
    IF OLD.salary > 100000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You are trying to delete an employee with more than 100000 salary, which is not allowed';
    END IF;
END$$
DELIMITER ;
SET SQL_SAFE_UPDATES = 0;

SELECT emp_id, salary FROM employee;
DELETE FROM employee WHERE salary > 100000;
SELECT emp_id, salary FROM employee;

DELIMITER $$
CREATE TRIGGER trg_after_delete_employee
AFTER DELETE ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log (emp_id, action)
    VALUES (OLD.emp_id, 'DELETE');
END$$
DELIMITER ;

SELECT * FROM employee_log;
DELETE FROM employee WHERE emp_id = 7 AND salary < 100000; 
SELECT * FROM employee_log;


DROP TRIGGER trg_before_delete_employee;
SHOW TRIGGERS;