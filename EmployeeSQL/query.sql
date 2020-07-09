--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

-- Use employees table to retrieve employee number, last name, first name, sex
-- Use salaries table to retrieve salary value

SELECT 
E.emp_no AS "Employee Number",
E.last_name AS "Last Name" ,
E.first_name AS "First Name",
E.sex AS "Sex",
S.salary AS "Salary"
FROM employees E
LEFT JOIN salaries S
ON E.emp_no = S.emp_no
ORDER BY E.emp_no;


--2. List first name, last name, and hire date for employees who were hired in 1986.

-- Use employees table to retrieve first name, last name, and hire date
-- Format date to get year of each hire date value 

SELECT 
E.first_name AS "First Name",
E.last_name AS "Last Name" ,
E.hire_date AS "Hire Date"
FROM employees E
WHERE date_part('year', hire_date) = '1986'
ORDER BY E.first_name;


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

--Use departments table to retrieve department number, department name
--Use dept_manager table to retrieve manager's employee number
--Use employees table to retrieve last name, first name

SELECT 
D.dept_no AS "Department Number",
D.dept_name AS "Department Name",
DM.emp_no AS "Manager Employee Number",
E.last_name AS "Manager Last Name",
E.first_name AS "Manager First Name"
FROM departments D
JOIN dept_manager DM
ON D.dept_no = DM.dept_no
JOIN employees E
ON DM.emp_no = E.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

--Use Employees table to retrieve employee number, last name, first name
--Use emp_dept table to retrieve dept_no
--Use departments table to retrieve department name

SELECT 
E.emp_no AS "Employee Number",
E.last_name AS "Last Name",
E.first_name AS "First Name",
D.dept_name AS "Department Name"
FROM employees E
JOIN emp_dept ED
ON E.emp_no = ED.emp_no
JOIN departments D
ON ED.dept_no = D.dept_no
ORDER BY D.dept_name;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

--employees - first name, last name, and sex
-- first_name = 'Hercules'
-- last_name like 'B.%'

SELECT
E.first_name AS "First Name",
E.last_name AS "Last Name",
E.sex AS "Sex"
FROM employees E
WHERE E.first_name = 'Hercules'
AND E.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.


--employees table  - employee number, last name, first name
--emp_dept - dept_no
--departments - department name
--dept_name = 'Sales'

SELECT
E.emp_no AS "Employee Number",
E.last_name AS "Last Name",
E.first_name AS "First Name",
D.dept_name AS "Department Name"
FROM employees E 
JOIN emp_dept ED 
ON E.emp_no = ED.emp_no
JOIN departments D
ON D.dept_no = ED.dept_no
WHERE D.dept_name = 'Sales';



--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--employees table  - employee number, last name, first name
-- --emp_dept - dept_no
--departments - department name
--dept_name = 'Sales'  or dept_name = 'Development'

SELECT
E.emp_no AS "Employee Number",
E.last_name AS "Last Name",
E.first_name AS "First Name",
D.dept_name AS "Department Name"
FROM employees E 
JOIN emp_dept ED 
ON E.emp_no = ED.emp_no
JOIN departments D
ON D.dept_no = ED.dept_no
WHERE D.dept_name = 'Sales'
OR D.dept_name = 'Development'
ORDER BY D.dept_name;


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-- count(emp_no)
--employees table
---group by last_name
--order by count DESC
SELECT E.last_name AS "Last Name", COUNT(E.emp_no) AS "Last Name Count"
FROM employees E
GROUP BY E.last_name
ORDER BY "Last Name Count" DESC;

