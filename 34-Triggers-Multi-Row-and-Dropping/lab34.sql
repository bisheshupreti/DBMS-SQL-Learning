USE lab_unit7;

DELIMITER $$
CREATE TRIGGER trg_salary_audit_multi
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
	INSERT INTO Salary_Audit (emp_id, old_salary, new_salary) VALUES 
    (NEW.emp_id, OLD.salary, NEW.salary);
END$$
DELIMITER ;

SELECT * FROM Salary_Audit;
UPDATE employee SET salary = salary * 1.10 WHERE dept_id = 1; 
SELECT * FROM Salary_Audit;

DROP TRIGGER trg_salary_audit_multi;
SHOW TRIGGERS;