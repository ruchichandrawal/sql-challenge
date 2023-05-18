
-- Create a table for departments
CREATE TABLE departments(
   dept_no VARCHAR (5) NOT NULL PRIMARY KEY ,
   dept_name VARCHAR (30)NOT NULL
);


-- Create a table for the department employees
CREATE TABLE dept_emp(
   id serial NOT NULL PRIMARY KEY,
   emp_no INT,
   dept_no VARCHAR (5),
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


--Create a table for deapartment manager
CREATE TABLE dept_manager(
   id serial NOT NULL PRIMARY KEY,
   dept_no VARCHAR (5),
   emp_no INT,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- Create a table for employees
CREATE TABLE employees(
   emp_no INT NOT NULL PRIMARY KEY,
   emp_title_id VARCHAR (10),
   birth_date DATE,
   first_name VARCHAR(30) NOT NULL,
   last_name VARCHAR(30) NOT NULL,
   sex VARCHAR (1),
   hire_date DATE,
   FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
 
 
-- Create a table for salaries
 CREATE TABLE salaries(
   id serial NOT NULL PRIMARY KEY,
   emp_no INT ,
   Salary FLOAT (10),
   FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
 );
 
 
-- Create a table for titles
 CREATE TABLE titles(
   title_id VARCHAR NOT NULL PRIMARY KEY,
   title VARCHAR
 );
 
-- Check the tables

SELECT *
FROM departments;

SELECT * 
FROM dept_emp;

SELECT *
FROM dept_manager;

SELECT *
FROM employees;

SELECT *
FROM salaries;

SELECT *
FROM titles;














