USE lab_unit6;

SELECT class_id, count(*) as std_count FROM student
GROUP BY class_id HAVING std_count > 2;

SELECT class_id, SUM(age) as total_age FROM student
GROUP BY class_id HAVING total_age > 90;

SELECT class_id, AVG(age) as avg_age FROM student
GROUP BY class_id HAVING avg_age > 20;

SELECT class_id, COUNT(*) as std_count FROM student
WHERE address = 'Kathmandu'
GROUP BY class_id HAVING std_count > 2