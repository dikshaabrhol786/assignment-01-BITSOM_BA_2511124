CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
customer_email VARCHAR(100),
customer_city VARCHAR(100)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(100),
unit_price DECIMAL(10,2)
);

CREATE TABLE sales_reps (
sales_rep_id INT PRIMARY KEY,
sales_rep_name VARCHAR(100),
sales_rep_email VARCHAR(100),
office_address VARCHAR(200)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
sales_rep_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

CREATE TABLE order_items (
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);