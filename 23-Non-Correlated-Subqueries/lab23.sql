USE lab_unit6; 

SELECT name FROM Student
WHERE class_id IN (
    SELECT class_id FROM Student
    GROUP BY class_id
    HAVING COUNT(*) > 2
);

SELECT name, age FROM Student
WHERE age > (
    SELECT AVG(age) FROM Student
);

SELECT name FROM Student
WHERE class_id = (
    SELECT class_id FROM Student
    WHERE name = 'Bishesh'
);

SELECT name FROM Student s
WHERE EXISTS (
    SELECT 1
    FROM Class c
    WHERE c.class_id = s.class_id
);