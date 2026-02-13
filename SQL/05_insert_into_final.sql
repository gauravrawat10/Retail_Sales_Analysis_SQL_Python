-- Insert cleaned and typed data from staging table
-- into final analytics table

INSERT INTO analytics.superstore (
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,

    customer_id,
    customer_name,
    segment,

    country,
    city,
    state,
    postal_code,
    region,

    product_id,
    category,
    sub_category,
    product_name,

    sales,
    quantity,
    discount,
    profit
)
SELECT
    row_id::INT,
    order_id,
    order_date::DATE,
    ship_date::DATE,
    ship_mode,

    customer_id,
    customer_name,
    segment,

    country,
    city,
    state,
    postal_code,
    region,

    product_id,
    category,
    sub_category,
    product_name,

    sales::NUMERIC,
    quantity::INT,
    discount::NUMERIC,
    profit::NUMERIC
FROM analytics.superstore_stage;

--Verification
SELECT COUNT(*) FROM analytics.superstore;
SELECT * FROM analytics.superstore LIMIT 5;
SELECT
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM analytics.superstore;
