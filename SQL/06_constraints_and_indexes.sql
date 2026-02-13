-- Add primary key on row_id
-- This ensures each row is uniquely identifiable

ALTER TABLE analytics.superstore
ADD CONSTRAINT pk_superstore
PRIMARY KEY (row_id);

-- Index for region-based analysis
CREATE INDEX idx_superstore_region
ON analytics.superstore (region);

-- Index for category-based analysis
CREATE INDEX idx_superstore_category
ON analytics.superstore (category);

-- Index for date-based analysis
CREATE INDEX idx_superstore_order_date
ON analytics.superstore (order_date);


