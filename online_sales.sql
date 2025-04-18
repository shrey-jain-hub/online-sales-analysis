CREATE TABLE online_sales (
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_date, amount, product_id) VALUES
('2023-01-15', 150.00, 101),
('2023-01-20', 200.00, 102),
('2023-02-10', 300.00, 103),
('2023-02-15', 250.00, 101),
('2023-03-05', 400.00, 104),
('2023-03-20', 350.00, 105);
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
