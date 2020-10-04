-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
FROM employees
INNER Join salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;

-- List first name, last name, and hire date for 
-- employees who were hired in 1986.
SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT employees.first_name,
	employees.last_name,
	dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name
FROM dept_manager
INNER Join employees
ON employees.emp_no = dept_manager.emp_no
INNER Join departments
ON departments.dept_no = dept_manager.dept_no
ORDER BY employees.first_name;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER Join dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER Join departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY employees.emp_no;

-- List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."
SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER Join dept_emp
ON dept_emp.emp_no = employees.emp_no
Left OUTER Join departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no;

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
INNER Join dept_emp
ON dept_emp.emp_no = employees.emp_no
Left OUTER Join departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'
ORDER BY employees.emp_no;

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name,
	COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count desc;