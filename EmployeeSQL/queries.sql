--1. List the employee number, last name, first name, sex, and salary of each employee
-- employee number, last name, first name, sex from Employees
-- salary from Salaries
SELECT e.emp_no, last_name, first_name, sex, salary
FROM "Employees" AS e
JOIN "Salaries" AS s
	ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

-- 2. List employees who were hired in 1986
SELECT emp_no, last_name, first_name, hire_date
FROM "Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name
-- department number, department name from Departments
-- emp_title_id, employee number, last name, and first name from Employees
-- managers emp_title_id starts with 'm'
SELECT d.dept_no,d.dept_name,e.emp_title_id,e.last_name,e.first_name
FROM "Dept_Emp" AS de
JOIN "Employees" AS e
ON e.emp_no = de.emp_no
JOIN "Departments" AS d
ON d.dept_no = de.dept_no
WHERE e.emp_title_id LIKE 'm%';

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
-- employee number, last name, first name from Employees
-- dept_no, dept_name from Departments
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name, d.dept_no
FROM "Dept_Emp" AS de
JOIN "Employees" AS e
ON e.emp_no = de.emp_no
JOIN "Departments" AS d
ON d.dept_no = de.dept_no
;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT last_name, first_name
FROM "Employees"
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
-- 'Sales' from Departments
-- emp_no, last_name, first_name from Employees
SELECT e.emp_no, e.last_name, e.first_name
FROM "Dept_Emp" AS de
JOIN "Employees" AS e
ON e.emp_no = de.emp_no
JOIN "Departments" AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Emp" AS de
JOIN "Employees" AS e
ON e.emp_no = de.emp_no
JOIN "Departments" AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) as "Frequency of name"
FROM "Employees"
GROUP BY last_name
ORDER BY "Frequency of name" DESC;