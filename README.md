# online-sales-analysis

## Introduction
This repository includes a SQL script and a sample dataset designed for the analysis of online sales data. The focus of the analysis is on identifying trends in monthly revenue and order volume based on sales data from the first quarter of 2023.

## Dataset Description
The dataset comprises sales records with the following attributes:
- **order_date**: The date the order was placed (data type: DATE).
- **amount**: The revenue generated from each order (data type: DECIMAL).
- **product_id**: A unique identifier for each product (data type: INTEGER).

### Example Data
| order_date | amount | product_id |
|------------|--------|------------|
| 2023-01-15 | 150.00 | 101        |
| 2023-01-20 | 200.00 | 102        |
| 2023-02-10 | 300.00 | 103        |
| 2023-02-15 | 250.00 | 101        |
| 2023-03-05 | 400.00 | 104        |
| 2023-03-20 | 350.00 | 105        |

## Instructions for Setup

1. **Database Configuration**:
   - Select a database management system (e.g., PostgreSQL, MySQL, SQLite).
   - Create a new database for conducting the analysis.

2. **Table Creation**:
   - Run the following SQL command to set up the `online_sales` table:
     ```sql
     CREATE TABLE online_sales (
         order_date DATE,
         amount DECIMAL(10, 2),
         product_id INT
     );
     ```

3. **Inserting Sample Data**:
   - Populate the `online_sales` table with the sample data provided:
     ```sql
     INSERT INTO online_sales (order_date, amount, product_id) VALUES
     ('2023-01-15', 150.00, 101),
     ('2023-01-20', 200.00, 102),
     ('2023-02-10', 300.00, 103),
     ('2023-02-15', 250.00, 101),
     ('2023-03-05', 400.00, 104),
     ('2023-03-20', 350.00, 105);
     ```

4. **Monthly Revenue and Order Volume Analysis**:
   - Execute the following SQL query to analyze the data:
     ```sql
     SELECT 
         EXTRACT(YEAR FROM order_date) AS year,
         EXTRACT(MONTH FROM order_date) AS month,
         SUM(amount) AS total_revenue,
         COUNT(DISTINCT product_id) AS order_volume
     FROM 
         online_sales
     GROUP BY 
         year, month
     ORDER BY 
         year, month;
     ```

## Analysis Results
- The output of this analysis will yield insights into the total revenue and order volume for each month within the specified timeframe.
![Screenshot 2025-04-18 091048](https://github.com/user-attachments/assets/8f1c423c-41bd-4009-91cb-6c028455da29)






