USE lab_unit7;

CREATE INDEX idx_employee_name
ON Employee(name);

CREATE INDEX idx_employee_address_salary
ON Employee(address, salary);

CREATE UNIQUE INDEX idx_employee_email
ON Employee(email);

CREATE FULLTEXT INDEX idx_employee_address_fulltext
ON Employee(address);

SHOW INDEX FROM Employee;

DROP INDEX idx_employee_name
ON Employee;

CREATE INDEX idx_dept_salary
ON Employee(dept_id, salary);

DROP INDEX idx_dept_salary
ON Employee;

SHOW INDEX FROM Employee;


