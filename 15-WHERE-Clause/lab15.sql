USE lab_unit6;
SELECT * FROM student;

SELECT * FROM student
WHERE age > 20;

SELECT * FROM student
WHERE address ='Kathmandu' AND age > 18;

SELECT * FROM student
WHERE address ='Kathmandu' OR address ='Pokhara';


SELECT * FROM student
WHERE age BETWEEN 18 AND 22;

SELECT * FROM student
WHERE class_id IN (4, 5, 6);

SELECT class_id, name  FROM student
WHERE name LIKE 'R%';

SELECT class_id, name FROM student
WHERE name LIKE '%a';

SELECT *FROM student
WHERE address IS NULL;
