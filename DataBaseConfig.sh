#!/bin/bash

# Database configuration
DB_HOST="localhost"
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database"

# SQL query
SQL_QUERY="SELECT * FROM your_table;"

# Check if the user belongs to the access group
if groups $USER | grep -q "your_access_group"; then
    # Execute the SQL query
    result=$(mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "$SQL_QUERY")

    # Print the result
    echo "Query Result:"
    echo "$result"
else
    echo "You do not have the necessary access to run this script."
fi
