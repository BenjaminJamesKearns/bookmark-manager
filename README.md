# Bookmark Manager #
------
## How to setup a database ##
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

## How to setup a test database ##
1. connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Create a table for the database using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
4. Use \l to see a list of databases 
