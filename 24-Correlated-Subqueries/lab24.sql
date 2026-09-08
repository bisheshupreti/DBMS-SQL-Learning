USE lab_unit6;

SELECT s.name, s.age, s.class_id FROM Student s
WHERE s.age > (
    SELECT AVG(s2.age) FROM Student s2
    WHERE s2.class_id = s.class_id
);

SELECT s.name, s.class_id FROM Student s
WHERE EXISTS (
    SELECT 1 FROM Class c
    WHERE c.class_id = s.class_id
);