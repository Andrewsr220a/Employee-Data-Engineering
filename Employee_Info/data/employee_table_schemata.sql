-- Create table employees

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(2),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

select * from employees

-- Create table departments 

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30),
  PRIMARY KEY (dept_no)
);

select * from departments

-- Create table dep_emp 

CREATE TABLE dept_emp (
	emp_no INT ,
	dept_no VARCHAR(10),
	from_date DATE,
	to_date DATE ,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- Create table dep_managers 

CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 from_date DATE,
 to_date DATE ,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers



--Creating salaries table


CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

--Creating titles table

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(20),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from titles