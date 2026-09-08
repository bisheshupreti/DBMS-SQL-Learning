USE lab_unit6; 

UPDATE Student
SET age = 20
WHERE student_id = 5;

UPDATE Student
SET age = age + 1
WHERE class_id = 2;

UPDATE Student
SET address = 'Kathmandu'
WHERE class_id IN (
    SELECT class_id
    FROM Class
    WHERE class_name = 'BCA'
);

UPDATE Student
SET class_id = 3
WHERE age > 22;

