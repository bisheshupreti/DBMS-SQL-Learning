CREATE DATABASE college;

USE college;

CREATE TABLE student(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL, 
    age INT, 
    address VARCHAR(100)
    );
    
DESC  student;

