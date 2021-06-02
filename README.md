# SQL Project: &nbsp;Employee Database

![sql.png](Images/sql.png)

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. &nbsp;Your first major task is a research project on employees of the corporation from the 1980s and 1990s. &nbsp;All that remain of the database of employees from that period are six CSV files.

For this project, we will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. &nbsp;In other words, we will perform:

1. &nbsp;Data Engineering

2. &nbsp;Data Analysis

#### Data Modeling

Inspected the CSVs and sketched out an ERD of the tables.

#### Data Engineering

* Created a table schema for each of the six CSV files. &nbsp;Specified data types, primary keys, foreign keys, and other constraints.

* Imported each CSV file into the corresponding SQL table.

#### Data Analysis

Using a complete database, we performed the following queries:

1. &nbsp;Listed the following details of each employee: &nbsp;employee number, last name, first name, sex, and salary.

2. &nbsp;Listed first name, last name, and hire date for employees who were hired in 1986.

3. &nbsp;Listed the manager of each department with the following information: &nbsp;department number, department name, the manager's employee number, last name, first name.

4. &nbsp;Listed the department of each employee with the following information: &nbsp;employee number, last name, first name, and department name.

5. &nbsp;Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. &nbsp;Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. &nbsp;Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. &nbsp;In descending order, listed the frequency count of employee last names (i.e. how many employees share each last name).

## Additional Analysis

By examining the data, we were overcome with a creeping suspicion that the dataset is fake. &nbsp;We surmised that the boss handed us spurious data in order to test the data engineering skills of new employees. &nbsp;To confirm this hunch, we decided to take the following steps to generate visualizations of the data:

1. &nbsp;Imported the SQL database into Pandas.

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

2. &nbsp;Created a histogram to visualize the most common salary ranges for employees.

3. &nbsp;Created a bar chart of average salary by title.