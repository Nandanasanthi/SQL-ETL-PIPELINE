-- Audit Table
CREATE TABLE IF NOT EXISTS etl_audit_log (
  log_id INTEGER PRIMARY KEY AUTOINCREMENT,
  table_name TEXT,
  inserted_rows INTEGER,
  load_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Production Table
CREATE TABLE IF NOT EXISTS production_sales (
  sale_id INTEGER,
  customer_name TEXT,
  amount REAL,
  sale_date TEXT
);

-- Staging Table
CREATE TABLE IF NOT EXISTS staging_sales (
  sale_id INTEGER,
  customer_name TEXT,
  amount REAL,
  sale_date TEXT
);
