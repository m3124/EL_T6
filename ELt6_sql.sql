-- 1. Total Revenue
SELECT SUM(sale_price) AS total_revenue
FROM sales;

-- 2. Total Customers
SELECT COUNT(DISTINCT user_id) AS total_cus
FROM sales;

-- 3. Average Sale Price
SELECT AVG(sale_price) AS avg_sale_price
FROM sales;

-- 4. Monthly Revenue Trend
SELECT DATE_FORMAT(created_at, '%Y-%m') AS month,
       SUM(sale_price) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- 5. Top 5 Products by Revenue
SELECT product_id,
       SUM(sale_price) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 5;

-- 6. Revenue Contribution by Top 10 Products (Percentage of Total Revenue)
SELECT SUM(total_sales) / (SELECT SUM(sale_price) FROM sales) * 100 AS revenue_percent
FROM (
    SELECT product_id, SUM(sale_price) AS total_sales
    FROM sales
    GROUP BY product_id
    ORDER BY total_sales DESC
    LIMIT 10
) t;
-- 7. Monthly Growth Rate (%)
SELECT month,
       revenue,
       (revenue - LAG(revenue) OVER(ORDER BY month)) / LAG(revenue) OVER(ORDER BY month) * 100 AS growth_pct
FROM (
    SELECT DATE_FORMAT(created_at, '%Y-%m') AS month,
           SUM(sale_price) AS revenue
    FROM sales
    GROUP BY month
) t;

