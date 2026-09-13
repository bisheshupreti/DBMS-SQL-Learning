 USE lab_unit7; 

DELIMITER //
CREATE PROCEDURE SelectRecords()
BEGIN
	SELECT * FROM employee;
END //
DELIMITER ;
CALL SelectRecords();



DELIMITER //
CREATE PROCEDURE MyEmployees(IN p_address VARCHAR(100))
BEGIN
	SELECT * FROM employee WHERE address = p_address;
END //
DELIMITER ;
CALL MyEmployees('Kathmandu');

DELIMITER //
CREATE PROCEDURE MyEmployees1(
	IN p_dept_id INT,
	IN p_address VARCHAR(100)
)
BEGIN
	SELECT * FROM employee WHERE dept_id = p_dept_id AND address = p_address;
END //
DELIMITER ;
CALL MyEmployees1(1, 'Kathmandu');

DROP PROCEDURE SelectRecords;

SHOW PROCEDURE STATUS;

SHOW CREATE PROCEDURE MyEmployees;