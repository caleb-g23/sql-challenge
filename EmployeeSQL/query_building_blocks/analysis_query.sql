-- 1
SELECT employee_info.emp_no, last_name, first_name, sex, salary 
FROM employee_info 
JOIN salaries
ON employee_info.emp_no = salaries.emp_no;

-- 2
SELECT first_name, last_name, hire_date 
FROM employee_info
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3
SELECT managers.emp_no, managers.dept_no, dept_name, last_name, first_name
FROM managers
JOIN employee_info
ON managers.emp_no = employee_info.emp_no
JOIN departments
ON managers.dept_no = departments.dept_no
ORDER BY dept_no asc; 

-- 4 
SELECT employees.dept_no, employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no;

-- 5
SELECT first_name, last_name, sex 
FROM employee_info
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6
SELECT employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales';

-- 7
SELECT dept_name, employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8 
SELECT last_name,
COUNT (last_name) AS last_name_frequency 
FROM employee_info
GROUP BY last_name
ORDER BY COUNT (last_name) desc; 