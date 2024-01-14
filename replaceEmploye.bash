#!/bin/bash

# Define your SQL query
sql_query="SELECT employee_id, employee_name, (base_salary + bonus) AS total_salary FROM employees;"

# Replace 'your_database' with the actual name of your database
database_name="your_database"

# Replace 'your_username' and 'your_password' with your database username and password
db_username="your_username"
db_password="your_password"

# Execute the SQL query using the mysql command
mysql -u "$db_username" -p"$db_password" -D "$database_name" -e "$sql_query"
