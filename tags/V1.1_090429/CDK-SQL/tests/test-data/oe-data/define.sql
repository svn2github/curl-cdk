-- tables
DROP TABLE IF EXISTS product;
CREATE TABLE product
   (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price DOUBLE NOT NULL
   )       
;
DROP TABLE IF EXISTS customer;
CREATE TABLE customer
   (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
   )       
;
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
   (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    date TEXT NOT NULL
   )       
;
DROP TABLE IF EXISTS item;
CREATE TABLE item
   (
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
 item.order_id AS order_id,
 orders.date AS date,
 customer.name AS customer,
 item.id AS id,
 product.name AS product,
 item.quantity AS quantity,
 product.price AS price,
 item.quantity  * product.price AS total_price 
FROM
 orders, item, customer, product
WHERE
 item.order_id = orders.id AND
 orders.customer_id = customer.id AND
 item.product_id = product.id
ORDER BY
 item.order_id, item.id
;
DROP VIEW IF EXISTS by_date;
CREATE VIEW by_date AS
SELECT
 date,
 product,
 sum(total_price) AS total_price
FROM order_info 
GROUP BY date, product
;
