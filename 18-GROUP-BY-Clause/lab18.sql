USE lab_unit6;

SELECT * FROM student;

SELECT class_id, COUNT(*) AS count FROM student
GROUP BY class_id;

SELECT class_id, sum(age) AS total_age FROM student
GROUP BY class_id;

SELECT class_id, AVG(age) AS average_age FROM student
GROUP BY class_id;

SELECT class_id, address, COUNT(*) AS no_of_std FROM student
GROUP BY class_id, address;

SELECT class_id, COUNT(*) AS no_of_std FROM student
WHERE address = 'Kathmandu'
GROUP BY class_id;
