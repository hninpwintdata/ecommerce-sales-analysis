-- Q1: Total number of orders
SELECT COUNT(Order_ID) AS total_orders
FROM ecommerce_sales;

-- Q2: Total revenue
SELECT SUM(Revenue) AS total_revenue
FROM ecommerce_sales;

-- Q3: Average revenue per order
SELECT AVG(Revenue) AS average_revenue
FROM ecommerce_sales;

-- Q4: Total quantity sold
SELECT SUM(Quantity) AS total_quantity
FROM ecommerce_sales;

-- Q5: Average quantity per order
SELECT AVG(Quantity) AS average_quantity
FROM ecommerce_sales;

-- Q6: Highest revenue from a single order
SELECT MAX(Revenue) AS highest_order_revenue
FROM ecommerce_sales;

-- Q7: Lowest revenue from a single order
SELECT MIN(Revenue) AS lowest_order_revenue
FROM ecommerce_sales;

-- Q8: Total revenue by category
SELECT Category, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Category
ORDER BY total_revenue DESC;

-- Q9: Order count by category
SELECT Category, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Category
ORDER BY order_count DESC;

-- Q10: Average revenue per order by category
SELECT Category, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Category
ORDER BY average_revenue DESC;

-- Q11: Total revenue by customer type
SELECT Customer_Type, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Customer_Type
ORDER BY total_revenue DESC;

-- Q12: Average revenue per order by customer type
SELECT Customer_Type, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Customer_Type
ORDER BY average_revenue DESC;

-- Q13: Order count by customer type
SELECT Customer_Type, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Customer_Type
ORDER BY order_count DESC;

-- Q14: Total revenue by sales channel
SELECT Sales_Channel, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Sales_Channel
ORDER BY total_revenue DESC;

-- Q15: Order count by sales channel
SELECT Sales_Channel, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Sales_Channel
ORDER BY order_count DESC;

-- Q16: Average revenue per order by sales channel
SELECT Sales_Channel, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Sales_Channel
ORDER BY average_revenue DESC;


-- Q17: Order count by discount level
SELECT Discount, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Discount
ORDER BY order_count DESC;

-- Q18: Total revenue by discount level
SELECT Discount, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Discount
ORDER BY total_revenue DESC;

-- Q19: Average revenue per order by discount level
SELECT Discount, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Discount
ORDER BY average_revenue DESC;

-- Q20: Lowest average revenue per order by discount level
SELECT Discount, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Discount
ORDER BY average_revenue ASC;

-- Q21: Total revenue by month
SELECT MONTH(Order_Date) AS month,
       SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY MONTH(Order_Date)
ORDER BY total_revenue DESC;

-- Q22: Order count by month
SELECT MONTH(Order_Date) AS month,
       COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY MONTH(Order_Date)
ORDER BY order_count DESC;

-- Q23: Average revenue per order by month
SELECT MONTH(Order_Date) AS month,
       AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY MONTH(Order_Date)
ORDER BY average_revenue DESC;

-- Q24: Total revenue by customer city
SELECT Customer_City, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Customer_City
ORDER BY total_revenue DESC;

-- Q25: Order count by customer city
SELECT Customer_City, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Customer_City
ORDER BY order_count DESC;

-- Q26: Average revenue per order by customer city
SELECT Customer_City, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Customer_City
ORDER BY average_revenue DESC;

-- Q27: Total revenue by category and sales channel
SELECT Category, Sales_Channel, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Category, Sales_Channel
ORDER BY total_revenue DESC;

-- Q28: Total revenue by customer type and sales channel
SELECT Customer_Type, Sales_Channel, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Customer_Type, Sales_Channel
ORDER BY total_revenue DESC;

-- Q29: Total revenue by product
SELECT Product, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_revenue DESC;

-- Q30: Average revenue per order by product
SELECT Product, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY average_revenue DESC;

-- Q31: Order count by product
SELECT Product, COUNT(Order_ID) AS order_count
FROM ecommerce_sales
GROUP BY Product
ORDER BY order_count DESC;

-- Q32: Total revenue by customer type and city
SELECT Customer_Type, Customer_City, SUM(Revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY Customer_Type, Customer_City
ORDER BY total_revenue DESC;

-- Q33: Average revenue per order by category and sales channel
SELECT Category, Sales_Channel, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Category, Sales_Channel
ORDER BY average_revenue DESC;

-- Q34: Average revenue per order by city and sales channel
SELECT Customer_City, Sales_Channel, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Customer_City, Sales_Channel
ORDER BY average_revenue DESC;

-- Q35: Average revenue per order by city and customer type
SELECT Customer_City, Customer_Type, AVG(Revenue) AS average_revenue
FROM ecommerce_sales
GROUP BY Customer_City, Customer_Type
ORDER BY average_revenue DESC;


