# Sales Aggregation Queries

## Dataset
- **Source:** `BigQuery Public Dataset – thelook_ecommerce`  
- **Table Name:** `sales`  
- **Columns:**
  | Column       | Description                      |
  |--------------|----------------------------------|
  | order_id     | Unique order identifier          |
  | created_at   | Order date and time              |
  | sale_price   | Sale amount for the order item  |
  | product_id   | Product identifier               |
  | user_id      | Customer identifier              |

---

## Overview
This repository contains **SQL aggregation queries** for the `sales` table. The queries demonstrate common analytics tasks such as total revenue, customer analysis, product performance, and monthly trends.

---

## Queries Included

1. **Total Revenue** – Calculates the total revenue from all sales.
2. **Total Customers** – Counts the number of unique customers.
3. **Average Sale Price** – Computes the average sale amount per order item.
4. **Monthly Revenue Trend** – Shows total revenue grouped by month.
5. **Top 5 Products by Revenue** – Lists the 5 products generating the highest revenue.
6. **Revenue Contribution by Top 10 Products** – Shows what percentage of total revenue comes from the top 10 products.
7. **Monthly Growth Rate (%)** – Calculates the month-over-month revenue growth percentage.

---

## How to Use

1. **Set up your MySQL database** and import `thelook_orders.csv` into a table named `sales`.  
2. Open **MySQL Workbench** (or any MySQL client).  
3. Open `sales_aggregations.sql` and run the script:  
   - To execute all queries at once: **Ctrl+Shift+Enter** (Windows) or **Cmd+Shift+Enter** (Mac)  
   - Each query result will appear in a separate **Results Grid tab**.  
4. Optionally, export results to CSV by right-clicking the Results Grid → **Export Result Set → Export to CSV…**

