USE ecommerce_project;

-- ============================================================
-- 01_load_clean_csv.sql
-- Purpose: Load the cleaned e-commerce dataset into MySQL
-- ============================================================

-- ⚠️ NOTE FOR OTHER USERS:
-- MySQL requires a full, absolute path to the CSV file.
-- Replace the path below with the correct one for your system.
-- Example (Windows):
--   SET @csv_path = 'C:/Users/YourName/Desktop/ecommerce-sql-analysis/data/clean_ecommerce.csv';
-- Example (macOS/Linux):
--   SET @csv_path = '/Users/yourname/Desktop/ecommerce-sql-analysis/data/clean_ecommerce.csv';
-- ============================================================

-- Your actual working path (Raphael):
SET @csv_path = 'C:/Users/Raphael/Desktop/ecommerce-sql-analysis/data/clean_ecommerce.csv';

-- ============================================================
-- Load the cleaned dataset
-- ============================================================
LOAD DATA LOCAL INFILE @csv_path
INTO TABLE ecommerce
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(InvoiceNo, StockCode, Description, Quantity, @InvoiceDate, UnitPrice, @CustomerID, Country)
SET
  -- Format datetime from the clean CSV
  InvoiceDate = STR_TO_DATE(@InvoiceDate, '%Y-%m-%d %H:%i:%s'),
  -- Handle blank CustomerIDs
  CustomerID  = NULLIF(@CustomerID, '');

-- ============================================================
-- Validation check (optional)
-- ============================================================
SELECT COUNT(*) AS total_records FROM ecommerce;
SELECT MIN(InvoiceDate) AS start_date, MAX(InvoiceDate) AS end_date FROM ecommerce;
