departments
-
dept_no VARCHAR PK
dept_name VARCHAR 

titles
-
title_id VARCHAR PK
title VARCHAR

salaries
-
emp_no INT PK FK - employees.emp_no
salary INT

employees
-
emp_no INT PK
emp_title VARCHAR FK >- titles.title_id
birth_date DATETIME
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATETIME

dept_manager
-
dept_no VARCHAR FK >- dept_emp.dept_no
emp_no INT PK FK - dept_emp.emp_no

dept_emp
-
emp_no INT PK FK - employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no

