USE lab_unit7;

DELIMITER $$

CREATE TRIGGER trg_before_update_salary
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You are trying to decrease the salary of an employee, which is not allowed';
    END IF;
END$$

DELIMITER ;

UPDATE employee SET salary = salary - 10000 WHERE emp_id = 1;

DELIMITER $$
CREATE TRIGGER trg_after_update_salary
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
	INSERT INTO Salary_Audit (emp_id, old_salary, new_salary) VALUES 
    (NEW.emp_id, OLD.salary, NEW.salary);
END$$
DELIMITER ;

UPDATE employee SET salary = salary + 30000 WHERE emp_id = 1;
SELECT * FROM Salary_Audit;

UPDATE employee SET salary = salary * 1.10; 
SELECT * FROM Salary_Audit;

SHOW TRIGGERS;
