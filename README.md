## SQL Challenge Project - Employee database analysis

Background: It’s been two weeks since I was hired as a new data engineer at this fictional company My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files. I designed the tables to hold the data from the CSV files, imported the CSV files into the SQL database, and conducted analysis on the data.

---
### Data Modeling

After inspection and shallow analysis of the csv files, I sketched an entity relationship diagram.

![employees_ERD](https://github.com/emilyneaville/sql-challenge/blob/main/EmployeeSQL/entity_relationship_diagram.png?raw=true)

---
### Data Engineering

Exported the ERD to create a table schema for all CSV files.

- Specified the data types, primary keys, foreign keys, and other constraints
- Creates in correct order to handle foreign keys
- Import each CSV file into its corresponding SQL table

---
### Data Analysis

- Ran multiple queries to better understand the dataset and gain specific insights about each employee, their department, management, and more
- Created a view to simplify the queries
