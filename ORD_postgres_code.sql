-- Column Inheritance

-- Drop table
DROP TABLE employee
DROP TABLE manager
DROP TABLE manger

-- Create table called employee 
CREATE TABLE IF NOT EXISTS employee(
	name TEXT,
	department VARCHAR(100),
	years INTEGER
);


-- Create table called manager and use INHERITANCE
CREATE TABLE IF NOT EXISTS manager(
	years_manager INTEGER
)	INHERITS (employee);


-- Insert employee data
INSERT INTO employee VALUES
	('Mike Downey', 'Finance', 10),
	('David Polanco', 'Finance', 8),
	('Dorain Skinner', 'Human Resources', 5),
	('Donna Croft', 'Accounting', 15),
	('Donna Liotine', 'Accounting', 5)
;

-- Insert manager data
INSERT INTO manager VALUES
	('Michael Jordan', 'Finance', 10, 4),
	('Zion Williams', 'Human Resources', 10, 2),
	('Gerry Parks', 'Accounting', 20,10)
;

-- When you query employee you will also 
-- see the managers since managers are also employees
-- Note you do not need to use UNION 
SELECT * FROM employee;

-- When you query ONLY employee you will 
-- only see employees(non_managers)
-- Note the KEY word ONLY
SELECT * FROM ONLY employee;

