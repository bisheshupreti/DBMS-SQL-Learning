USE lab_unit6;
SELECT * FROM student;
 
DELETE FROM student WHERE student_id = 1;
DELETE FROM student WHERE age > 20;

DELETE FROM Student
WHERE class_id IN (
    SELECT class_id
    FROM Class
    WHERE class_name = 'Computer Science'
);

SELECT * FROM student;