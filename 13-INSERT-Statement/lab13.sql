USE lab_unit6;

INSERT INTO Class (class_id, class_name, section) VALUES (1, 'Computer Science', 'A');

INSERT INTO Student (name, address, class_id, section, age) 
VALUES ('AAA', 'Kathmandu', 1, 'A', 19);

INSERT INTO Student (name, address, class_id, section, age) VALUES 
('BBB', 'Pokhara', 1, 'A', 20),
('CCC', 'Lalitpur', 1, 'B', 18),
('DDD', 'Dharan', 1, 'A', 17);


INSERT INTO Student 
SET name = 'EEE',
    address = 'Chitwan',
    class_id = 1,
    section = 'B',
    age = 16;

INSERT INTO Student (name, class_id, section, age) 
VALUES ('FFF', 1, 'A', 19);



CREATE TABLE Student_Backup LIKE Student;
INSERT INTO Student_Backup 
SELECT * FROM Student 
WHERE age >= 18;

SELECT * FROM Student;
SELECT * FROM Student_Backup;