# mysql
data analysis

# 🛒 E-commerce Product Data Analysis

This project performs analysis on e-commerce product data using MySQL. It includes loading raw data, creating a database and table, cleaning and transforming data, and extracting business insights through SQL queries and views.

---

## 📂 Project Files

* **`output.csv`**
  Raw dataset containing e-commerce product information (e.g., price, brand, rating, seller).

* **`outputtask03.sql`**
  SQL script that:

  * Creates the database and table
  * Performs basic data exploration and transformation
  * Executes several queries for insights
  * Creates a view and an index for efficient querying

---

## 🗄️ Database Structure

* **Database Name**: `ecommerceoutput`
* **Table Name**: `output`

| Column Name      | Type                  | Description                         |
| ---------------- | --------------------- | ----------------------------------- |
| `id`             | INT (AUTO\_INCREMENT) | Unique row identifier               |
| `_id`            | VARCHAR(255)          | Product identifier                  |
| `actual_price`   | VARCHAR(20)           | Product price as string with commas |
| `average_rating` | DECIMAL(3,1)          | Average user rating (0.0 to 5.0)    |
| `brand`          | VARCHAR(100)          | Product brand                       |
| `description`    | VARCHAR(255)          | Short product description           |
| `seller`         | VARCHAR(255)          | Seller name                         |

---

## 🧮 SQL Operations Performed

1. **Database Setup**

   * Drops existing database if present.
   * Creates a new database and selects it.

2. **Table Creation**

   * Defines schema as above.
   * (Assumes data will be loaded separately using `output.csv`.)

3. **Sample Queries**

   * Display first 10 records.
   * Clean and convert `actual_price` for numerical analysis.
   * Filter products priced above ₹2000.
   * Find average rating per brand.
   * Identify top 5 sellers by number of products.

4. **Views and Indexing**

   * **View**: `high_rated_products` — all products with rating ≥ 4.0.
   * **Index**: `idx_brand` — on `brand` column for faster queries.

---

## 🚀 How to Run

1. Open MySQL or a database GUI like MySQL Workbench.
2. Run `outputtask03.sql`.
3. To import data:

   ```sql
   LOAD DATA INFILE 'path_to/output.csv'
   INTO TABLE output
   FIELDS TERMINATED BY ',' 
   ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```

   > ⚠️ Ensure secure file privileges and correct path settings are configured.

---

## 📊 Sample Insights

* Products with price > ₹2000 by brand.
* Top-rated brands sorted by average rating.
* Most active sellers (top 5).
* Cleaned price field enables accurate filtering and analytics.

---
