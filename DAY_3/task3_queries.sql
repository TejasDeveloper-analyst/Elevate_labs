
-- Task 3: SQL for Data Analysis – online_ecommerce Dataset

-- 1. Total number of orders
SELECT COUNT(DISTINCT Order_Number) AS total_orders FROM online_ecommerce;

-- 2. Total revenue
SELECT SUM(Total_Sales) AS total_revenue FROM online_ecommerce;

-- 3. Top 5 states by revenue
SELECT State_Code, SUM(Total_Sales) AS revenue
FROM online_ecommerce
GROUP BY State_Code
ORDER BY revenue DESC
LIMIT 5;

-- 4. Average sales per order
SELECT Order_Number,
       SUM(Total_Sales) AS order_sales,
       SUM(Quantity) AS total_quantity,
       ROUND(SUM(Total_Sales) / SUM(Quantity), 2) AS avg_price_per_item
FROM online_ecommerce
GROUP BY Order_Number;

-- 5. Monthly revenue trend
SELECT SUBSTR(Order_Date, 1, 7) AS month,
       SUM(Total_Sales) AS revenue
FROM online_ecommerce
GROUP BY month
ORDER BY month;

-- 6. Top 10 products by quantity sold
SELECT Product, SUM(Quantity) AS total_sold
FROM online_ecommerce
GROUP BY Product
ORDER BY total_sold DESC
LIMIT 10;

-- 7. High-value customers (spent more than 50000)
SELECT Customer_Name, SUM(Total_Sales) AS total_spent
FROM online_ecommerce
GROUP BY Customer_Name
HAVING total_spent > 50000
ORDER BY total_spent DESC;

-- 8. Create a view: customer performance summary
CREATE VIEW customer_summary AS
SELECT Customer_Name,
       SUM(Total_Sales) AS total_spent,
       SUM(Total_Cost) AS total_cost,
       COUNT(DISTINCT Order_Number) AS total_orders,
       ROUND(SUM(Total_Sales) - SUM(Total_Cost), 2) AS total_profit
FROM online_ecommerce
GROUP BY Customer_Name;
