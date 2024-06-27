-- setup_mysql_dev.sql
-- Create the database if it does not exist
-- Create the user hbnb_dev with the password hbnb_dev_pwd if it doesn't already exist
-- Grant all privileges on the database hbnb_dev_db to the user hbnb_dev
-- Grant SELECT privilege on the performance_schema database to the user hbnb_dev
-- Apply the changes made to the privileges

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
