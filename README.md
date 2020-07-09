# sql-challenge
Postgres SQL assignment

# SQL Homework - Employee Database: 

## Background

The task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
In this assignment, first part is to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, following is performed:

1. Data Engineering

2. Data Analysis



#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. The following tool is used to create ERD diagram http://www.quickdatabasediagrams.com

#### Data Engineering

* Used the information we have to create a table schema for each of the six CSV files. Specified data types, primary keys, foreign keys, and other constraints appropriately.

  * Created primary key or composite keys as needed for each table to uniquely identify a row
  * The schema sql as creating table script in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. **Note** The data is imported in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

After completing the database, queries are formed to grab analysis of data for following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus 

#### Data Visualization

Took the following steps to generate a visualization of the data

1. Import the SQL database into Pandas using sqlalchemy library

2. Created a histogram to visualize the most common salary ranges for employees.

3. Created a bar chart of average salary by title.


## Submission

* Create an image file of ERD diagram
* Create a `.sql` file of table schemata.
* Create a `.sql` file of queries.
* Create a Jupyter Notebook of the bonus analysis.


