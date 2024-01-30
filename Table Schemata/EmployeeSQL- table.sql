create table departments (
	dept_no varchar PRIMARY KEY NOT NULL,
	dept_name text
);

create table employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar,
	birth_date date,
	first_name text,
	last_name text,
	sex text,
	hire_date date
);

create table dept_emp (
	emp_no int, 
	dept_no varchar,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_manager (
	dept_no varchar, 
	emp_no int, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table salaries (
	emp_no int,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table titles (
	title_id varchar PRIMARY KEY,
	title text
);