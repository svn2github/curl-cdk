-- tables
DROP TABLE IF EXISTS products;
CREATE TABLE products (
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 name TEXT NOT NULL,
 price DOUBLE NOT NULL
)       
;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 name TEXT NOT NULL
)       
;
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 customer_id INTEGER NOT NULL,
 date TEXT NOT NULL
)    
;
DROP TABLE IF EXISTS items;
CREATE TABLE items (
 order_id INTEGER NOT NULL,
 id INTEGER NOT NULL,
 product_id INTEGER NOT NULL,
 quantity INTEGER NOT NULL,
 PRIMARY KEY (order_id, id)
)    
;
-- views
DROP VIEW IF EXISTS order_info;
CREATE VIEW order_info AS
SELECT
 orders.id AS order_id,
 date,
 customers.name AS customer
FROM
 orders, customers
WHERE
 orders.customer_id = customers.id
ORDER BY
 order_id
;
DROP VIEW IF EXISTS item_info;
CREATE VIEW item_info AS
SELECT
 items.order_id AS order_id,
 orders.date AS date,
 customers.name AS customer,
 items.id AS id,
 products.name AS product,
 items.quantity AS quantity,
 products.price AS price,
 items.quantity  * products.price AS total_price 
FROM
 orders, items, customers, products
WHERE
 items.order_id = orders.id AND
 orders.customer_id = customers.id AND
 items.product_id = products.id
ORDER BY
 items.order_id, items.id
;
DROP VIEW IF EXISTS by_date;
CREATE VIEW by_date AS
SELECT
 date,
 product,
 sum(total_price) AS total_price
FROM item_info 
GROUP BY date, product
;
