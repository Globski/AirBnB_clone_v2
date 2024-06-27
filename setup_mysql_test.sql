-- Create the database hbnb_test_db if it doesn't already exist
-- Create the user hbnb_test with the password hbnb_test_pwd if it doesn't already exist
-- Grant all privileges on the database hbnb_test_db to the user hbnb_test
-- Grant SELECT privilege on the performance_schema database to the user hbnb_test
-- Apply the changes made to the privileges

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
FLUSH PRIVILEGES;
