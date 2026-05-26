-- Create Database
CREATE DATABASE online_book_store;

-- Use the database
-- USE online_book_stoRE

-- 1. Create Books Table
CREATE TABLE Books (
    Book_id SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
	Genre VARCHAR(50),
	Published_Year INT,
    Price NUMERIC(10, 2),
    stock INT
);

-- 2. Create Customers Table
CREATE TABLE Customers (
    Customer_id SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
	City VARCHAR(50),
	Country VARCHAR(150)
);

-- 3. Create Orders Table
CREATE TABLE Orders (
    Order_id SERIAL PRIMARY KEY,
    Customer_id INT REFERENCES Customers(Customer_id) ,
    Book_id INT REFERENCES Books(Book_id),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC (10,2)
);

