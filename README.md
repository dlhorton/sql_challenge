# sql_challenge

# Database Schema README

## Overview

This repository contains SQL code for creating and managing tables in a relational database. The tables represent information related to departments, titles, employee information, salaries, and department managers.

## Table Schemata

### `departments`

- `dept_no`: CHAR(5), Primary Key
- `dept_name`: VARCHAR(50), Not Null

### `titles`

- `title_id`: CHAR(5), Primary Key
- `title`: VARCHAR(50), Not Null

### `dept_emp`

- `emp_no`: CHAR(5), Primary Key
- `dept_no`: CHAR(5), Foreign Key (references `departments(dept_no)`)

### `salaries`

- `emp_no`: CHAR(5), Primary Key
- `salary_amount`: INT

### `dept_managers`

- `emp_no`: CHAR(5), Primary Key
- `dept_no`: CHAR(5), Foreign Key (references `departments(dept_no)`)

## Generating SQL Files

You can generate .sql files for each table by using the `SHOW CREATE TABLE` statement or manually creating SQL statements based on the table schemata. Save the SQL statements in separate .sql files or combine them into a single file for easy execution.

Example SQL statements are provided in the respective table creation sections.

## Usage

1. Execute the SQL statements in a database environment to create the tables.
2. Modify the statements based on your specific requirements.
3. Use the tables to store and manage relevant data.

## Notes

- Be cautious when modifying table schemata in a production environment.
- Refer to the database documentation for specific SQL syntax depending on the database management system you are using.
