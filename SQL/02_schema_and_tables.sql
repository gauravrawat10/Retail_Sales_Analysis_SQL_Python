-- Creates analytics schema
CREATE SCHEMA IF NOT EXISTS analytics;

-- Creates Superstore table
CREATE TABLE analytics.superstore (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(20),

    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(20),

    country VARCHAR(30),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    region VARCHAR(20),

    product_id VARCHAR(30),
    category VARCHAR(30),
    sub_category VARCHAR(30),
    product_name TEXT,

    sales NUMERIC(10,2),
    quantity INT,
    discount NUMERIC(4,2),
    profit NUMERIC(10,2)
);

-- Verification 
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema = 'analytics';

