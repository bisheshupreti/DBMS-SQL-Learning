USE lab_unit6;


CREATE VIEW student_basic_view AS
SELECT student_id, name, age
FROM Student;

SELECT * FROM student_basic_view;


CREATE VIEW student_class_view AS
SELECT s.name AS student_name, c.class_name
FROM Student s
INNER JOIN Class c
    ON s.class_id = c.class_id;
    
SELECT * FROM student_class_view;



CREATE VIEW class_student_count_view AS
SELECT class_id, COUNT(*) AS student_count
FROM Student
GROUP BY class_id;

SELECT * FROM class_student_count_view;



ALTER VIEW student_class_view AS
SELECT s.name AS student_name, s.age, c.class_name
FROM Student s
INNER JOIN Class c
    ON s.class_id = c.class_id;

SELECT *
FROM student_class_view
WHERE age > 18;



DROP VIEW student_class_view ;