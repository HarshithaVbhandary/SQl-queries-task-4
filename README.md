# 📊 SQL Data Analysis - Meesho  Dataset

## 🧠 Objective
Use SQL queries to extract insights and analyze data from the Meesho eCommerce orders dataset.

## 🛠 Tools Used
- MySQL (Workbench)
- Dataset: `meesho.csv`
  

---

## 📁 Dataset Overview
The dataset contains details of Meesho orders including order status, state, pricing, and taxes.

### Columns:
- `order_date`: Date of order in `DD-MM-YYYY` format (text)
- `sub_order_num`: Unique order identifier
- `order_status`: Status of the order (e.g., Delivered, Cancelled)
- `state`: Customer’s state
- `pin`: PIN code
- `gst_amount`: GST amount applied
- `meesho_price`: Base price
- `shipping_charges_total`: Shipping charges
- `price`: Final price paid

---

## 📌 Tasks Performed

### ✅ Data Preparation
- Created `meesho` table with proper schema
- Loaded CSV data using either import wizard or SQL `INSERT`
- Created indexes on `state(50)` and `order_date(20)` to optimize query performance

### ✅ Query Examples

#### 1. Monthly Revenue:
```sql
SELECT 
  DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month,
  SUM(price) AS total_revenue
FROM meesho
GROUP BY month
ORDER BY month;

2. Total Orders by State:
SELECT state, COUNT(*) AS total_orders
FROM meesho
GROUP BY state
ORDER BY total_orders DESC;

3. Cancelled Orders Percentage:
SELECT 
  ROUND(SUM(order_status = 'Cancelled') / COUNT(*) * 100, 2) AS cancelled_percent
FROM meesho_orders;
4. Orders by Status:
SELECT order_status, COUNT(*) AS total
FROM meesho_orders
GROUP BY order_status;

💡 SQL Features Used
SELECT, WHERE, GROUP BY, ORDER BY

Aggregate functions: SUM(), COUNT(), ROUND()

Joins and views (if extended)

Index optimization

STR_TO_DATE() and DATE_FORMAT() for date parsing

📤 Deliverables
SQL Queries (queries.sql)

Output screenshots (screenshots/)

This README.md file

📈 Outcome
Gained practical experience with writing optimized SQL queries

Understood how to analyze real-world eCommerce data using MySQL

Improved performance using indexing and formatting techniques


