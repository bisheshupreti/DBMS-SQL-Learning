USE lab_unit6; 

SELECT s.name, c.class_name 
FROM student s 
INNER JOIN class c
ON s.class_id = c.class_id; 

SELECT s.name, s.age, s.section, c.class_name 
FROM student s 
INNER JOIN class c
ON s.class_id = c.class_id; 

SELECT s.name, s.age, s.section, c.class_name 
FROM student s 
INNER JOIN class c
ON s.class_id = c.class_id 
WHERE s.age > 20;

SELECT c.class_name, COUNT(s.student_id) AS count
FROM student s 
INNER JOIN class c
ON s.class_id = c.class_id 
GROUP BY s.class_id, c.class_name;