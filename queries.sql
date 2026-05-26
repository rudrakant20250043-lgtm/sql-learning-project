-- =============================================
--           BASIC QUERIES
-- =============================================

-- 1. Retrieve all books in the "Fiction" genre
SELECT * FROM Books WHERE Genre='Fiction';

-- 2. Find Books published after the year 1950
SELECT * FROM Books WHERE Published_Year > 1950;

-- 3. List all the customers from Canada
SELECT * FROM Customers WHERE Country='Canada';

-- 4. Show all orders placed in November 2023
SELECT * FROM Orders WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5. Retrieve the total stock of books available
SELECT SUM(Stock) AS Total_Stock FROM Books;

-- 6. Find the details of the most expensive book
SELECT * FROM Books ORDER BY Price DESC LIMIT 1;

-- 7. Show all orders where quantity is more than 1
SELECT * FROM Orders WHERE Quantity > 1;

-- 8. List all distinct genres available
SELECT DISTINCT Genre FROM Books;

-- 9. Retrieve all orders where total amount exceeds $20
SELECT * FROM Orders WHERE Total_Amount > 20;

-- 10. Calculate total revenue generated from all orders
SELECT SUM(Total_Amount) AS Total_Revenue FROM Orders;

-- 11. Find the book with the lowest stock
SELECT * FROM Books ORDER BY Stock ASC LIMIT 1;


-- =============================================
--          ADVANCED QUERIES
-- =============================================

-- 1. Retrieve the total number of books sold for each genre
SELECT b.Genre, SUM(o.Quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.Genre;

-- 2. Find the average price of books in the "Fantasy" genre
SELECT AVG(Price) AS Average_Price FROM Books WHERE Genre='Fantasy';

-- 3. List customers who have placed at least 2 orders
SELECT Customer_id, COUNT(Order_id) AS Order_Count 
FROM Orders
GROUP BY Customer_id
HAVING COUNT(Order_id) >= 2;

-- 4. Find the most frequently ordered book
SELECT Book_id, COUNT(Order_id) AS Order_Count
FROM Orders
GROUP BY Book_id
ORDER BY Order_Count DESC 
LIMIT 1;

-- 5. Top 3 most expensive books of "Fantasy" genre
SELECT * FROM Books
WHERE Genre='Fantasy'
ORDER BY Price DESC LIMIT 3;

-- 6. Retrieve total quantity of books sold by each author
SELECT b.Author, SUM(o.Quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.Book_id = b.Book_id
GROUP BY b.Author;

-- 7. List cities where customers who spent over $30 are located
SELECT DISTINCT c.City
FROM Orders o
JOIN Customers c ON o.Customer_id = c.Customer_id
WHERE o.Total_Amount > 30;

-- 8. Find the customer who spent the most on orders
SELECT Customer_id, SUM(Total_Amount) AS Total_Spent
FROM Orders 
GROUP BY Customer_id 
ORDER BY Total_Spent DESC
LIMIT 1;
