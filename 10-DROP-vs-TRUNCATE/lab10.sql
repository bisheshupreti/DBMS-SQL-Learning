USE company;

CREATE TABLE test_student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    address VARCHAR(100)
);

DESC test_student;

TRUNCATE TABLE test_student;
SHOW TABLES;
DESC test_student;
DROP TABLE test_student;

SHOW TABLES;