-- 1. Import Data into Books Table
-- Note: Replace 'path/to/' with your actual folder path before running
COPY Books(Book_id, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'path/to/Books.csv' 
CSV HEADER;

-- 2. Import Data into Customers Table
COPY Customers(Customer_id, Name, Email, Phone, City, Country)
FROM 'path/to/Customers.csv' 
CSV HEADER;

-- 3. Import Data into Orders Table
COPY Orders(Order_id, Customer_id, Book_id, Order_Date, Quantity, Total_Amount)
FROM 'path/to/Orders.csv' 
CSV HEADER;
