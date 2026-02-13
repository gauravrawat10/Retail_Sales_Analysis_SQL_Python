-- Load raw CSV data into staging table
-- NOTE: Update the file path according to your system

COPY analytics.superstore_stage
FROM 'C:\Users\2005r\OneDrive\Desktop\superstore_dataset_project\excel_cleaned_data_csv\Superstore_Cleaned_Final.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    ESCAPE '"',
    ENCODING 'UTF8'
);
-- Verification
SELECT * 
FROM analytics.superstore_stage
LIMIT 5;
