-- Initial setup script

-- Drop existing tables if they exist
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS orders;

-- Create the 'items' table with columns for name and quantity
CREATE TABLE IF NOT EXISTS items (
    name VARCHAR(255) NOT NULL,
    quantity int NOT NULL DEFAULT 10
);

-- Create the 'orders' table with columns for item_name and number
CREATE TABLE IF NOT EXISTS orders (
    item_name VARCHAR(255) NOT NULL,
    number int NOT NULL
);

-- Insert initial data into the 'items' table
INSERT INTO items (name) VALUES ("apple"), ("pineapple"), ("pear");
