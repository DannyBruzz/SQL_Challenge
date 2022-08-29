
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries AS s ON s.emp_no = e.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

Select  m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager AS m
INNER JOIN employees AS e ON e.emp_no = m.emp_no
INNER JOIN departments AS d ON d.dept_no = m.dept_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select  w.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS w
INNER JOIN employees AS e ON e.emp_no = w.emp_no
INNER JOIN departments AS d ON d.dept_no = w.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

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

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

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

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;