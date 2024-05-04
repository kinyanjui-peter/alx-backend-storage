-- Create a table named 'users' if it doesn't already exist.
-- This table is designed to store user information, including email, name, and country.

CREATE TABLE IF NOT EXISTS users (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each user, automatically incremented
    email varchar(255) NOT NULL UNIQUE,  -- User's email address, must be unique and cannot be empty
    name varchar(255),  -- User's name, can be optional (nullable)
    country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL  -- User's country with default value 'US'
);
