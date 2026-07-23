

-- 1. Verify row count after import
SELECT COUNT(*) AS total_rows FROM sales;


-- 2. Total sales and profit by region
SELECT 
    region, 
    ROUND(SUM(sales), 2) AS total_sales, 
    ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_sales DESC;


-- 3. Top 10 products by total sales
SELECT 
    product_name, 
    ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


-- 4. Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;


-- 5. Profit by discount band (confirms discount-loss pattern)
SELECT 
    CASE 
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 0.1 THEN '1-10%'
        WHEN discount <= 0.2 THEN '11-20%'
        WHEN discount <= 0.3 THEN '21-30%'
        ELSE '30%+'
    END AS discount_band,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount_band
ORDER BY avg_profit DESC;