-- Trigger to auto-log after insert into production_sales
CREATE TRIGGER trg_after_insert_production_sales
AFTER INSERT ON production_sales
BEGIN
  INSERT INTO etl_audit_log (table_name, inserted_rows)
  VALUES ('production_sales', (SELECT COUNT(*) FROM production_sales));
END;
