-- 1 List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee_info.emp_no, last_name, first_name, sex, salary 
FROM employee_info 
JOIN salaries
ON employee_info.emp_no = salaries.emp_no;

-- 2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employee_info
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3 List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT managers.emp_no, managers.dept_no, dept_name, last_name, first_name
FROM managers
JOIN employee_info
ON managers.emp_no = employee_info.emp_no
JOIN departments
ON managers.dept_no = departments.dept_no
ORDER BY dept_no ASC; 

-- 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT employees.dept_no, employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no;

-- 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employee_info
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6 List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales';

-- 7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_name, employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT (last_name) AS last_name_frequency 
FROM employee_info
GROUP BY last_name
ORDER BY COUNT (last_name) DESC; 