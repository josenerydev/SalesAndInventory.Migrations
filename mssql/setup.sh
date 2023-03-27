#!/bin/bash

# Wait for SQL Server to be started and then run the sql script
./wait-for-it.sh mssql:1433 --timeout=0 --strict -- sleep 5s

# Run the command to create the database
/opt/mssql-tools/bin/sqlcmd -S localhost,1433 -U SA -P "YourStrong!Passw0rd" -i create_database.sql