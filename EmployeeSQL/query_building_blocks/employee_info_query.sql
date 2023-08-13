CREATE TABLE employee_info (
	emp_no VARCHAR(30) NOT NULL, 
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL
); 

SELECT * 
FROM employee_info;