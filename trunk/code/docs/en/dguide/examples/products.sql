-- schema
DROP TABLE IF EXISTS products;
CREATE TABLE products (
 id TEXT NOT NULL PRIMARY KEY,
 name TEXT NOT NULL,
 price DOUBLE NOT NULL
)
;
-- data
INSERT INTO products VALUES ('0001','paper',10.00);
INSERT INTO products VALUES ('0002','envelope',5.00);
INSERT INTO products VALUES ('0003','pen',4.00);
INSERT INTO products VALUES ('0004','pencil',2.00);
INSERT INTO products VALUES ('0005','marker',7.00);
INSERT INTO products VALUES ('0006','folder',9.00);
INSERT INTO products VALUES ('0007','calendar',4.00);

