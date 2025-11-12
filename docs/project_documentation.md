# E-Commerce SQL Analysis

## Overview
This project analyzes transactional data from an online retail store between 2010 and 2011.  
The goal is to extract key business insights about revenue, product performance, customer behavior, and returns using SQL.

The dataset was cleaned, encoded in UTF-8/Latin1, and imported into MySQL using reproducible scripts.  
A **cleaned version** of the dataset (`clean_ecommerce.csv`) should be **placed manually** in the `/data/` folder before running the loading script (`01_load_clean_csv.sql`).  
The dataset itself is **not stored in this repository** due to size and licensing restrictions, but the original source (the [UCI Online Retail Dataset](https://archive.ics.uci.edu/ml/datasets/Online+Retail)) is publicly available.

---

## Dataset Information
**Expected file:** `clean_ecommerce.csv` (place inside `/data/`)  
**Records:** 541,909 rows  
**Columns:**
- `InvoiceNo` – unique identifier for each transaction  
- `StockCode` – product ID code  
- `Description` – product name  
- `Quantity` – number of items purchased (negative = return)  
- `InvoiceDate` – date and time of transaction  
- `UnitPrice` – price per item (in GBP)  
- `CustomerID` – unique identifier of customer  
- `Country` – country where the order was placed  

---

## Project Questions & Objectives

| # | Question | Business Purpose | SQL File |
|---|-----------|------------------|-----------|
| 1 | What is the **total revenue** of the company? | Understand overall performance. | `q1_total_revenue.sql` |
| 2 | What is the **daily revenue trend** (total per day)? | Identify day-to-day fluctuations in sales. | `q2_daily_revenue.sql` |
| 3 | What are the **monthly revenue trends**? | Detect seasonality or monthly growth. | `q3_monthly_revenue.sql` |
| 4 | What are the **top 10 products by revenue**? | Find best-selling items. | `q4_top_products_by_revenue.sql` |
| 5 | What is the **returns rate per product** (negative quantities)? | Evaluate return frequency by product. | `q5_returns_rate_by_product.sql` |
| 6 | Who are the **top 10 customers by total spend**? | Identify the most valuable customers. | `q6_top_customers.sql` |
| 7 | What is the **average order value per country**? | Compare spending behavior by geography. | `q7_avg_order_value_by_country.sql` |
| 8 | What are the **top revenue-generating countries** (total and % share)? | Understand market distribution. | `q8_revenue_by_country.sql` |
| 9 | Which **month had the highest return rate**? | Identify problematic periods. | `q9_month_with_highest_return_rate.sql` |
| 10 | What is the **revenue contribution of the top 5 countries**? | Measure market concentration. | `q10_top5_countries_contribution.sql` |

---

## Results Summary
Each query result is exported as a `.csv` file under `/results/` for transparency and further analysis.  
These outputs represent the final insights derived from SQL analysis.

---

## Reproducibility
1. Create the database and table using `00_create_db_and_table.sql`  
2. Place the cleaned dataset (`clean_ecommerce.csv`) in `/data/`  
3. Load the dataset using `01_load_clean_csv.sql`  
4. Run each query file in order from `q1_...` to `q10_...`  

All SQL scripts are included in the `/queries/` folder.  
A placeholder file (`.gitkeep`) keeps `/data/` visible in the repository even when the dataset is excluded by `.gitignore`.

---

## Data Cleaning Summary
The raw Online Retail dataset contained encoding issues, blank descriptions, and missing customer IDs.  
Before importing into MySQL, the following steps were performed to create `clean_ecommerce.csv`:
- Removed rows with missing `CustomerID`  
- Standardized encoding to UTF-8/Latin1 for MySQL compatibility  
- Trimmed whitespace and ensured no empty product descriptions  
- Retained both positive (sales) and negative (returns) quantities  
- Converted date fields into consistent `YYYY-MM-DD HH:MM:SS` format  

---

## Author
**Raphael Dantas**  
*E-Commerce SQL Analysis – Portfolio Project*


