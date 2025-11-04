-- Create isolated DB for this project
CREATE DATABASE IF NOT EXISTS ecommerce_project
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE ecommerce_project;

-- Table schema (matches your cleaned CSV)
DROP TABLE IF EXISTS ecommerce;
CREATE TABLE ecommerce (
  InvoiceNo   VARCHAR(20),
  StockCode   VARCHAR(20),
  Description VARCHAR(255),
  Quantity    INT,
  InvoiceDate DATETIME NULL,
  UnitPrice   DECIMAL(10,2),
  CustomerID  INT NULL,
  Country     VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Helpful indexes for analysis
CREATE INDEX idx_invoicedate ON ecommerce (InvoiceDate);
CREATE INDEX idx_customerid  ON ecommerce (CustomerID);
CREATE INDEX idx_stockcode   ON ecommerce (StockCode);
