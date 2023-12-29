#!/bin/bash

# MySQL connection details
mysql_user="your_mysql_user"
mysql_password="your_mysql_password"
mysql_host="your_mysql_host"
mysql_database="your_database"
user_to_grant="user_to_grant"

# Execute the SQL command
mysql -u"$mysql_user" -p"$mysql_password" -h"$mysql_host" "$mysql_database" <<EOF
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO '$user_to_grant'@'%' IDENTIFIED BY 'user_password';
FLUSH PRIVILEGES;
EOF
