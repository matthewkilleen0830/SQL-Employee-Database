-- Drop tables if they exist
drop table employees;
drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table salaries;
drop table titles;

-- Create all (6) tables
create table employees (
	emp_no int not null,
	emp_title varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no)
);

create table departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
	dept_no varchar not null,
	emp_no int not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees(emp_no)
);

create table titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
);

-- Alter tables to add constraints to allow foreign keys
-- alter table "employees" add constraint "fk_employees_emp_title_id" foreign key ("emp_title")
-- references "titles" ("title_id");

-- alter table "dept_emp" add constraint "fk_dept_emp_emp_no" foreign key ("emp_no")
-- references "employees" ("emp_no");

-- alter table "dept_emp" add constraint "fk_dept_emp_dept_no" foreign key ("dept_no")
-- references "departments" ("dept_no");

-- alter table "dept_manager" add constraint "fk_dept_manager_dept_no" foreign key ("dept_no")
-- references "departments" ("dept_no");

-- alter table "dept_manager" add constraint "fk_dept_manager_emp_no" foreign key ("emp_no")
-- references "employees" ("emp_no");

-- alter table "salaries" add constraint "fk_salaries_emp_no" foreign key ("emp_no")
-- references "employees" ("emp_no");

-- View each table's data (one at a time)
select * from employees;
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;