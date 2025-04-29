-- 1. Monthly Revenue and Order Volume
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS 'year and month', 
    SUM(quantity * price) AS total_revenue, 
    COUNT(DISTINCT customer_id) AS total_orders
FROM online_retail_data
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');

-- 2. Top 3 Months by Revenue
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS 'year and month', 
    SUM(quantity * price) AS total_revenue
FROM online_retail_data
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;

-- 3. Top 10 Products by Total Sales
SELECT 
    product_name, 
    SUM(quantity * price) AS total_sales
FROM online_retail_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 4. Total Revenue by City
SELECT 
    city, 
    SUM(quantity * price) AS total_revenue
FROM online_retail_data
GROUP BY city
ORDER BY total_revenue DESC;

-- 5. Number of Orders by Payment Method
SELECT 
    payment_method, 
    COUNT(DISTINCT customer_id) AS total_orders
FROM online_retail_data
GROUP BY payment_method
ORDER BY total_orders DESC;

-- 6. Average Price per Category
SELECT 
    category_name, 
    AVG(price) AS average_price
FROM online_retail_data
GROUP BY category_name
ORDER BY average_price DESC;

-- 7. Top 5 Categories by Total Revenue
SELECT 
    category_name, 
    SUM(quantity * price) AS total_revenue
FROM online_retail_data
GROUP BY category_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 8. Top 5 Cities by Number of Customers
SELECT 
    city, 
    COUNT(DISTINCT customer_id) AS total_customers
FROM online_retail_data
GROUP BY city
ORDER BY total_customers DESC
LIMIT 5;

-- 9. Best-Selling Products (by Quantity Sold)
SELECT 
    product_name, 
    SUM(quantity) AS total_quantity_sold
FROM online_retail_data
GROUP BY product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- 10. Total Revenue by Gender
SELECT 
    gender, 
    SUM(quantity * price) AS total_revenue
FROM online_retail_data
GROUP BY gender
ORDER BY total_revenue DESC;

-- 11. Monthly Average Review Score
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS 'year and month',
    AVG(CAST(review_score AS DECIMAL(3,2))) AS average_review_score
FROM online_retail_data
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');
