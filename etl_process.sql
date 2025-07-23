-- Remove Duplicates from Staging
DELETE FROM staging_sales
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM staging_sales
    GROUP BY customer_name, amount, sale_date
);

-- Remove rows with NULL or empty customer or amount
DELETE FROM staging_sales
WHERE TRIM(customer_name) IS NULL OR amount IS NULL;

-- Insert Clean Data into Production Table
INSERT INTO production_sales (sale_id, customer_name, amount, sale_date)
SELECT sale_id, customer_name, amount, sale_date
FROM staging_sales;

-- Log to Audit Table
INSERT INTO etl_audit_log (table_name, inserted_rows)
VALUES ('production_sales', (SELECT COUNT(*) FROM production_sales));
