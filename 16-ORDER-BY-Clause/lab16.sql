USE lab_unit6;

SELECT * FROM class;
SELECT * FROM student;

SELECT * FROM student ORDER BY student_id DESC;

SELECT name, age FROM student
ORDER BY age; -- ASC is default we can write or skip it

SELECT name, age FROM student
ORDER BY age DESC;

SELECT * FROM student
ORDER BY class_id ASC, name ASC;

SELECT * FROM student WHERE age>20
ORDER BY name ASC;
