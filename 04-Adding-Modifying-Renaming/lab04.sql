USE college;
CREATE TABLE student(
	std_id INT PRIMARY KEY,
    std_name VARCHAR(50)
);

ALTER TABLE student
ADD COLUMN email VARCHAR(100);

ALTER TABLE student
MODIFY COLUMN email VARCHAR(150);

ALTER TABLE student
RENAME COLUMN email TO student_email;

ALTER TABLE student
ADD COLUMN phone CHAR(10);

ALTER TABLE student
DROP COLUMN phone;

RENAME TABLE student TO students; 

DESC students;