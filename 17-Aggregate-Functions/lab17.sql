USE lab_unit6;

SELECT COUNT(*) FROM student;

SELECT COUNT(name) FROM student
WHERE name LIKE '%a';

SELECT SUM(age), AVG(age) FROM student;

SELECT AVG(age) FROM student 
WHERE class_id = 4;

SELECT MAX(age) FROM student;

SELECT MIN(age) AS min_age_ktm FROM student 
WHERE address ='Kathmandu';

SELECT COUNT(DISTINCT address) AS unique_addresses
FROM Student;




