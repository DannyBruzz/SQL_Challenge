Select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries AS s ON s.emp_no = e.emp_no;

Select first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

Select  m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager AS m
INNER JOIN employees AS e ON e.emp_no = m.emp_no
INNER JOIN departments AS d ON d.dept_no = m.dept_no;


Select  w.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS w
INNER JOIN employees AS e ON e.emp_no = w.emp_no
INNER JOIN departments AS d ON d.dept_no = w.dept_no

Select first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

Select  dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no IN
(
SELECT departments.dept_no
FROM departments
WHERE dept_name = 'Sales'
)


Select  dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no IN
(
SELECT departments.dept_no
FROM departments
WHERE dept_name = 'Sales' 
OR dept_name = 'Development'
)


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;