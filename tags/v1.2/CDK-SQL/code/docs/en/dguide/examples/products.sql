-- schema
DROP TABLE IF EXISTS products;
CREATE TABLE products (
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 name TEXT NOT NULL,
 price DOUBLE NOT NULL DEFAULT 0.00
)
;
-- data
INSERT INTO products VALUES (1,'paper',10.00);
INSERT INTO products VALUES (2,'envelope',5.00);
INSERT INTO products VALUES (3,'pen',4.00);
INSERT INTO products VALUES (4,'pencil',2.00);
INSERT INTO products VALUES (5,'marker',7.00);
INSERT INTO products VALUES (6,'folder',9.00);
INSERT INTO products VALUES (7,'calendar',4.00);

