DROP TABLE IF EXISTS emp_dept;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;




CREATE TABLE Departments (
  dept_no VARCHAR(4) PRIMARY KEY,
  dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE Titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
  emp_no int PRIMARY KEY,
  title_id VARCHAR(5) references titles(title_id),
  birth_date DATE NOT NULL,
  first_name    VARCHAR(1000) NOT NULL,
  last_name     VARCHAR(1000) NOT NULL,
  sex varchar(1) NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE Salaries (
  emp_no INT references employees(emp_no),
  salary NUMERIC(6) NOT NULL,
  PRIMARY KEY(emp_no)
);

CREATE TABLE Emp_dept (
   emp_no INT references employees(emp_no),
   dept_no VARCHAR(4) references departments(dept_no),
   PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE Dept_manager (
   dept_no VARCHAR(4) references departments(dept_no),
   emp_no INT references employees(emp_no),
   PRIMARY KEY(dept_no,emp_no)
);

