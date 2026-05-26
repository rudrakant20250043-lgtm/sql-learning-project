# sql-learning-project
📌 SQL project simulating an Online Book Store using 3 CSV files (books, customers, orders). Demonstrates relational database design, joins, and data analysis using SQL with common keys (book_id, customer_id) to perform real-world e-commerce style queries.
# 📚 Online Book Store SQL Project

## 📌 Project Overview
This project simulates an Online Book Store database using SQL. It is built using three CSV files representing different entities of the system: books, customers, and orders.

The main objective is to understand relational database design and perform SQL operations using real-world-like data.

---

## 📂 Dataset Structure

The project uses three CSV files:

### 1. books.csv
- Contains details about books
- Primary Key: `book_id`

### 2. customers.csv
- Contains customer information
- Primary Key: `customer_id`

### 3. orders.csv
- Contains order transactions
- Foreign Keys:
  - `book_id`
  - `customer_id`

---

## 🔗 Relationship Between Tables

- books (book_id) → referenced in orders
- customers (customer_id) → referenced in orders
- orders acts as a bridge table between books and customers

---

## 🛠️ SQL Concepts Used

- Table creation using CREATE TABLE
- Data insertion from CSV files
- Primary Key & Foreign Key concepts
- JOIN operations (INNER, LEFT)
- Aggregations (GROUP BY)
- CASE statements (for conditional logic)
- Basic data analysis queries

---

## 📊 Key Insights (Example Outputs)

- Most purchased books
- Top customers based on orders
- Revenue generated per book
- Customer purchase behavior analysis

---

## 🎯 Objective

To understand how relational databases work in real-world systems like e-commerce and how multiple tables are connected using keys for meaningful data analysis.

---

## 🚀 Future Improvements

- Add payment table
- Add date-wise sales analysis
- Implement window functions for ranking books/customers

---

## 📌 Author

Rudrakant Mishra
