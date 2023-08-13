-- Create table from "departments" csv
CREATE TABLE departments (
	dept_no VARCHAR (10) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR (20) NOT NULL
); 

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM departments;


-- Create table from "dept_emp" csv
CREATE TABLE employees (
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR (10) NOT NULL
	PRIMARY KEY (emp_no, dept_no)
); 

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM employees;


-- Create table from "dept_managers" csv
CREATE TABLE managers (
	dept_no VARCHAR (10) NOT NULL, 
	emp_no INTEGER NOT NULL PRIMARY KEY
); 

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM managers;


-- Create table from "employees" csv
CREATE TABLE employee_info (
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR (10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL
);

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM employee_info;


-- Create table from "salaries" csv
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	salary INTEGER NOT NULL
); 

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM salaries;


-- Create table from "titles" csv
CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL PRIMARY KEY, 
	title VARCHAR (20) NOT NULL
); 

-- import data using "Import/Export data" function 
-- view populated tabled 
SELECT * FROM titles;