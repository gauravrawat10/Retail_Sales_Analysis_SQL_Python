-- Drops staging table if it already exists
DROP TABLE IF EXISTS analytics.superstore_stage;

-- Creates staging table with all columns as TEXT
-- This avoids import failures due to formatting issues
CREATE TABLE analytics.superstore_stage (
    row_id TEXT,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,

    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,

    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,

    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,

    sales TEXT,
    quantity TEXT,
    discount TEXT,
    profit TEXT
);
-- Verification
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'analytics'
  AND table_name LIKE '%stage%';
