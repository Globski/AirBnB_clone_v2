-- setup_mysql_dev.sql
-- Create the database if it does not exist
-- Create the user if it does not exist
-- Grant all privileges on the database to the user
-- Grant SELECT privilege on performance_schema to the user
-- Apply the changes

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
