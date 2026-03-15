CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(100)
);

CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
city VARCHAR(100)
);

CREATE TABLE dim_date (
date_id DATE PRIMARY KEY,
month INT,
year INT
);

CREATE TABLE fact_sales (
sale_id INT PRIMARY KEY,
product_id INT,
store_id INT,
date_id DATE,
quantity INT,
revenue DECIMAL(10,2),

FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);