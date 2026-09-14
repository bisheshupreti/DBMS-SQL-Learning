 USE lab_unit7; 

DELIMITER // 
CREATE PROCEDURE GetSalaryInfo(
	OUT MaxSalary DECIMAL(10,2),
    OUT AvgSalary DECIMAL(10,2)
)
BEGIN 
	SELECT MAX(salary) INTO MaxSalary FROM employee;
    SELECT AVG(salary) INTO AvgSalary FROM employee;
END // 
 DELIMITER ; 
 
 CALL GetSalaryInfo(@max, @avg);
 SELECT @max AS Maximum_Salary, @avg AS Average_Salary;
 
 DELIMITER // 
CREATE PROCEDURE CountEmployeesByDept(
	IN p_dept_id INT,
    OUT p_count INT
)
BEGIN 
	SELECT COUNT(*) INTO p_count FROM employee WHERE dept_id = p_dept_id;
END //
DELIMITER ;

CALL CountEmployeesByDept(1, @p_count);
SELECT @p_count AS Employee_In_Dept_1;


DELIMITER //
CREATE FUNCTION GetEmployeeCount() 
RETURNS INT 
DETERMINISTIC
BEGIN 
	DECLARE total INT ; 
    
    SELECT COUNT(*) INTO total FROM employee; 
    
    RETURN total;
    
END //
DELIMITER ;

SELECT GetEmployeeCount();
 
 
DELIMITER //
CREATE FUNCTION GetAverageSalary( p_dept_id INT )
RETURNS INT 
DETERMINISTIC
BEGIN 
	DECLARE avg INT ; 
    
    SELECT AVG(salary) INTO avg FROM employee WHERE dept_id = p_dept_id; 
    
    RETURN avg;
    
END //
DELIMITER ;

SELECT GetAverageSalary(1); 