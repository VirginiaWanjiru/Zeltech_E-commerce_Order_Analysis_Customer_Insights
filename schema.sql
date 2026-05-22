CREATE TABLE customers ( 
         
         customer_id INT PRIMARY KEY,
         customer_name VARCHAR,
         email VARCHAR,
         registration_date DATE,
         country VARCHAR
         );
memory D 
memory D -- CREATING ORDERS TABLE 
no statements
memory D 
memory D order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2)
         FOREIGN KEY (customer_id) REFERENCES customer(customer_id) );
Parser Error:
syntax error at or near "order_id"

LINE 1: order_id INT PRIMARY KEY,
        ^
memory D CREATE TABLE orders(order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2)
         FOREIGN KEY (customer_id) REFERENCES customer(customer_id) );
Parser Error:
syntax error at or near "FOREIGN"

LINE 5: FOREIGN KEY (customer_id) REFERENCES customer(customer_id...
        ^
memory D CREATE TABLE orders(order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2)
         FOREIGN KEY (customer_id) REFERENCES customer(customer_id) );
Parser Error:
syntax error at or near "FOREIGN"

LINE 5: FOREIGN KEY (customer_id) REFERENCES customer(customer_id...
        ^
memory D 
memory D 
memory D CREATE TABLE orders(order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2),
         FOREIGN KEY (customer_id) REFERENCES customer(customer_id) );
Catalog Error:
Table with name customer does not exist!
Did you mean "customers"?
memory D CREATE TABLE orders(order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2),
         FOREIGN KEY (customer_id) REFERENCES customer(customer_id) );
Catalog Error:
Table with name customer does not exist!
Did you mean "customers"?
memory D CREATE TABLE orders(order_id INT PRIMARY KEY,
         customer_id INT,
         order_date DATE,
         total_amount DECIMAL(10,2),
         FOREIGN KEY (customer_id) REFERENCES customers(customer_id) );
memory D 
memory D 
memory D 
memory D CREATE TABLE order_items (
         order_item_id INT PRIMARY KEY,
         order_id INT,
         product_id VARCHAR,
         category VARCHAR,
         quantity INT,
         unit_price DECIMAL(10,2),
         FOREIGN KEY (order_id) REFERENCES orders(order_id));
memory D 
memory D 
memory D CREATE TABLE products (
         product_id INT PRIMARY KEY,
         product_name VARCHAR,
         category VARCHAR,
         price DECIMAL(10,2));
