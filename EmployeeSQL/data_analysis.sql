--list employee number, last name, first name, sex, and salary 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e 
INNER JOIN salaries AS s 
ON e.emp_no=s.emp_no;

--list first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

--list manager of departments by deptment number, department name, employee number, last name, first name
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM employees AS e 
JOIN dept_manager AS m 
ON e.emp_no = m.emp_no
JOIN departments AS d 
ON m.dept_no = d.dept_no;

--list department number for each employee, employee number, last name, first name, department name
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e 
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d 
ON d.dept_no = de.dept_no;


-- List first name, last name, sex of employees with name = Hercules B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--list employees in Sales Department (d007) by employee number, first name, last name
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e 
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
WHERE de.dept_no = 'd007';

-- list employees in the Sales (d007) and Development (d005) departments by employee number, last name, first name, department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e 
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d 
ON d.dept_no = de.dept_no
WHERE de.dept_no = 'd005' OR de.dept_no = 'd007';


-- list in descending order the frecquency of each last name
SELECT last_name, COUNT(last_name) as count 
FROM employees
GROUP BY last_name
ORDER BY count DESC, last_name;
