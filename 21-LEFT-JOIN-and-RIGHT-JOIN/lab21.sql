USE lab_unit6; 

SELECT * FROM class;
SELECT * FROM student;

SELECT s.name, c.class_name 
FROM student s 
LEFT JOIN class c
ON s.class_id = c.class_id; 

SELECT s.name, c.class_name 
FROM student s 
RIGHT JOIN class c
ON s.class_id = c.class_id; 

SELECT s.name, c.class_name 
FROM student s 
LEFT JOIN class c
ON s.class_id = c.class_id
WHERE s.age > 18; 