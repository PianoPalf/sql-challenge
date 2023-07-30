/* DATA ENGINEERING */

/* Drop Tables */
DROP TABLE Salaries;
DROP TABLE Titles;
DROP TABLE Employees;
DROP TABLE Departments;
DROP TABLE Department_Manager;
DROP TABLE Department_Employee;

/* Creation of Tables */
CREATE TABLE Salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Titles (
    title_id varchar(45) NOT NULL,
    title varchar(45) NOT NULL,
  	PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_no int NOT NULL,
    emp_title_id varchar(45) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    sex varchar(10),
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES Salaries (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id)
);

CREATE TABLE Departments (
    dept_no varchar(45) NOT NULL,
    dept_name varchar(45) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Manager (
    dept_no varchar(45) NOT NULL,
    emp_no int NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Department_Employee (
	emp_no int NOT NULL,
    dept_no varchar(45) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

/* Check Tables */
SELECT * FROM Salaries
SELECT * FROM Titles
SELECT * FROM Employees
SELECT * FROM Departments
SELECT * FROM Department_Manager
SELECT * FROM Department_Employee