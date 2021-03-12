-- Query #1:  join employees table with salaries table and query for
-- and list employee number, last name, first name, sex, and salary
select employees.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
employees.sex as "Gender",
salaries.salary as "Annual Salary"
from employees
left join salaries on
employees.emp_no = salaries.emp_no;

-- Query #2:  query for first name, last name, and hire date for employees hired in 1986
select first_name as "First Name",
last_name as "Last Name",
hire_date as "Date of Hire"
from employees where hire_date >= '1986-01-01' and hire_date < '1987-01-01';

-- Query #3:  join departments, department manager, and employees tables and query for manager of each department
-- and list department number, department name, employee number, last name, and first name
select departments.dept_no as "Department #",
departments.dept_name as "Department Name",
dept_manager.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name"
from dept_manager
inner join departments on dept_manager.dept_no = departments.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
order by departments.dept_no;

-- Query #4:  join departments, department employees, and employees tables and query for department of each employee
-- and list employee number, last name, first name, and department name
select departments.dept_name as "Department Name",
dept_emp.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name"
from dept_emp
inner join departments on dept_emp.dept_no = departments.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no;

-- Query #5:  query for first name, last name, and sex for employees named "Hercules" with last names beginning with "B"
select first_name as "First Name",
last_name as "Last Name",
sex as "Gender"
from employees where first_name = 'Hercules' and last_name like 'B%';

-- Query #6:  join departments, department employees, and employees tables and query for all employees in the sales department
-- and list employee number, last name, first name, and department name
select departments.dept_name as "Department Name",
dept_emp.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name"
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales';

-- Query #7:  join departments, department employees, and employees tables and query for all employees in the sales
-- and the development departments, and list employee number, last name, first name, and department name
select departments.dept_name as "Department Name",
dept_emp.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name"
from departments
inner join dept_emp on dept_emp.dept_no = departments.dept_no
inner join employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name in ('Sales','Development');

-- Query #8:  query for the count of unique employee last names and list in descending order
select last_name as "Employee Last Name",
count(last_name) as "Number of People"
from employees
group by last_name
order by "Number of People" desc;