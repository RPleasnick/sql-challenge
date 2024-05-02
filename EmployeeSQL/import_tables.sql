-- Delete the table departments 
DROP TABLE departments;

-- Create table departments
CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

-- Delete the table titles
DROP TABLE titles;

-- Create table titles
CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR NOT NULL
);

-- Delete the table dept_emp 
DROP TABLE dept_emp;

-- Create table dept_emp
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no)
);

-- Delete the table dept_manager
DROP TABLE dept_manager;

-- Create tabledept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER PRIMARY KEY
);

-- Delete the table salaries
DROP TABLE salaries;

-- Create table salaries
CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER NOT NULL
);

-- Delete the table employees
DROP TABLE employees;

-- Create table employees
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR,
    sex VARCHAR(1) NOT NULL,
    hire_date VARCHAR(10) NOT NULL
);

SELECT * FROM employees