USE lab_unit6; 

SELECT s.name, c.class_name 
FROM student s 
CROSS JOIN class c; 

SELECT s.name, c.class_name 
FROM student s, class c
WHERE s.age > 20;