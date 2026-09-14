USE lab_unit7;

-- 1. Create composite index
CREATE INDEX idx_dept_salary
ON Employee(dept_id, salary);


-- 2. Test queries
SELECT * FROM Employee WHERE dept_id = 1;
SELECT * FROM Employee WHERE dept_id = 1 AND salary > 50000;
SELECT * FROM Employee WHERE salary > 50000;


-- 3. Check execution plans
EXPLAIN SELECT * FROM Employee WHERE dept_id = 1;
EXPLAIN SELECT * FROM Employee WHERE dept_id = 1 AND salary > 50000;
EXPLAIN SELECT * FROM Employee WHERE salary > 50000;


-- 4. Drop index
DROP INDEX idx_dept_salary
ON Employee;


-- 5. Check execution plans again
EXPLAIN SELECT * FROM Employee WHERE dept_id = 1;
EXPLAIN SELECT * FROM Employee WHERE dept_id = 1 AND salary > 50000;
EXPLAIN SELECT * FROM Employee WHERE salary > 50000;
