 USE lab_unit7; 

DELIMITER //
CREATE PROCEDURE InsertRecords()
BEGIN
	INSERT INTO Employee (name, email, address, salary, gender, dob, dept_id) VALUES 
		('E', 'e@example.com', 'Dolakha', 50000, 'Male', '2000-05-10', 1), 
		('F', 'f@example.com', 'Dharan', 60000, 'Female', '1999-07-15', 2);
END //
DELIMITER ;

SELECT * FROM employee; 
CALL InsertRecords();
SELECT * FROM employee; 

DELIMITER //
CREATE PROCEDURE DeleteRecord(IN p_id INT)
BEGIN
	DELETE FROM employee WHERE emp_id = p_id;
END //
DELIMITER ;

CALL DeleteRecord(5);
SELECT * FROM employee;

DELIMITER //
CREATE PROCEDURE UpdateRecords(
		IN p_name VARCHAR(100),
		IN p_address VARCHAR(100), 
		IN p_salary DECIMAL(10,2)
)
BEGIN
	UPDATE employee SET name = p_name, address = p_address WHERE salary = p_salary;
END //
DELIMITER ;

CALL UpdateRecords('UD', 'New York', 45000);
SELECT * FROM employee;

DELIMITER //
CREATE PROCEDURE UpdateRecords1(
		IN p_id INT,
        IN pOld_salary DECIMAL(10,2),
		IN p_name VARCHAR(100),
		IN pNew_salary DECIMAL(10,2)
)
BEGIN
	UPDATE employee SET name = p_name, salary = pNew_salary WHERE emp_id = p_id AND salary = pOld_salary;
END //
DELIMITER ;

CALL UpdateRecords1(6, 60000, 'UF', 69000);
SELECT * FROM employee;
