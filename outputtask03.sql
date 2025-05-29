SELECT * FROM ecommerce.output;
DROP DATABASE ecommerceoutput;
CREATE DATABASE ecommerceoutput;
USE ecommerceoutput;
CREATE TABLE output (
    id INT AUTO_INCREMENT PRIMARY KEY,
    _id VARCHAR(255),
    actual_price VARCHAR(20),
    average_rating DECIMAL(3,1),
    brand VARCHAR(100),
    description VARCHAR(255),
    seller VARCHAR(255)
);
SELECT * FROM output LIMIT 10;
SELECT 
    _id,
    REPLACE(actual_price, ',', '') AS clean_price,
    CAST(REPLACE(actual_price, ',', '') AS UNSIGNED) AS price
FROM output;
SELECT brand, actual_price
FROM output
WHERE CAST(REPLACE(actual_price, ',', '') AS UNSIGNED) > 2000;
SELECT brand, AVG(average_rating) AS avg_rating
FROM output
GROUP BY brand
ORDER BY avg_rating DESC;
SELECT seller, COUNT(*) AS total_products
FROM output
GROUP BY seller
ORDER BY total_products DESC
LIMIT 5;
CREATE VIEW high_rated_products AS
SELECT *
FROM output
WHERE average_rating >= 4.0;
CREATE INDEX idx_brand ON output(brand);
