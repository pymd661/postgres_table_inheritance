-- Column Inheritance

-- Drop table
DROP TABLE employee
DROP TABLE manager
DROP TABLE manger

-- Create table called employee(non-managers)
CREATE TABLE IF NOT EXISTS employee(
	name TEXT,
	department VARCHAR(100),
	years INTEGER
);

-- Create table for managers only
CREATE TABLE IF NOT EXISTS manager(
	name TEXT,
	department VARCHAR(100),
	years INTEGER,
	years_manager INTEGER);


-- Insert employee data
INSERT INTO employee VALUES
	('Mike Downey', 'Finance', 10),
	('David Polanco', 'Finance', 8),
	('Dorain Skinner', 'Human Resources', 5),
	('Donna Croft', 'Accounting', 15),
	('Donna Liotine', 'Accounting', 5);
-- Insert manager data
INSERT INTO manager VALUES
	('Michael Jordan', 'Finance', 10, 4),
	('Zion Williams', 'Human Resources', 10, 2),
	('Gerry Parks', 'Accounting', 20,10);
--If you want to view all the employees
--which also includes managers since managers are employees
-- You would need to use a UNION
CREATE VIEW all_employees AS
	SELECT name, department, years FROM employee
		UNION
	SELECT name, department, years FROM manager;
-- View all employees
SELECT * FROM all_employees;
