🛠️ SQL ETL Pipeline Simulation Project



📄 Overview

This project simulates a complete ETL (Extract, Transform, Load) pipeline using SQLite and DB Browser for SQLite. It demonstrates the ingestion of raw data, transformation (cleaning and structuring), and automated logging using SQL triggers—all without any external scripting or programming language.


---

🧰 Tools & Technologies

SQLite (via DB Browser for SQLite)

CSV Files (as raw input and export format)

SQL Triggers for automation and logging



---

🔁 ETL Process

1️⃣ Extract

Imported raw sales data from a CSV file into a staging table: staging_sales.


2️⃣ Transform

Cleaned the data by:

Removing duplicates

Eliminating rows with NULL values


Inserted cleaned data into a new production table: production_sales.


3️⃣ Load

Created an audit log table: etl_audit_log to track insert operations.

Implemented an SQL trigger on production_sales to automatically log each insert into etl_audit_log.


4️⃣ Export

Exported the final production data and logs:

production_sales.csv

etl_audit_log.csv


Also included:

Full SQL backup: etl_pipeline_backup.sql

Database file: etl_pipeline.db




---

✅ Project Highlights

📦 Pure SQL-based ETL workflow

🔍 Audit logging for traceability

⚙️ Trigger-based automation

🧪 Minimal tools, enterprise-grade simulation



---

📂 Deliverables

File Name	Description

production_sales.csv	Final cleaned sales data
etl_audit_log.csv	Logged ETL audit trail
etl_pipeline.db	Complete SQLite database
etl_pipeline_backup.sql	SQL dump of entire ETL project# SQL-ETL-PIPELINE
