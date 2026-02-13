-- Overall Business Performance
-- Total sales, total profit, and profit margin
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percent
FROM analytics.superstore;

-- Sales & Profit by Category
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Sub-Category Performance
SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY sub_category
ORDER BY total_profit DESC;

-- Region wise Performance
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY region
ORDER BY total_profit DESC;

-- State-level Loss Analysis
SELECT
    state,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit;

-- Discount Impact on Profit
SELECT
    discount,
    COUNT(*) AS number_of_orders,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY discount
ORDER BY discount;

-- Shipping Mode Analysis
SELECT
    ship_mode,
    COUNT(*) AS total_orders,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY ship_mode
ORDER BY total_profit DESC;

-- Monthly Sales Trend
SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales), 2) AS total_sales
FROM analytics.superstore
GROUP BY month
ORDER BY month;

-- Top 10 Customers by Sales
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM analytics.superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Loss-Making Products
SELECT
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM analytics.superstore
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit;


