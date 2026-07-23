CREATE DATABASE DairyProductManagementt;
USE DairyProductManagementt;

# Category Table
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

# Product Table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    brand VARCHAR(100),
    quantity INT NOT NULL,
    manufactured_date DATE,
    expiry_date DATE,
    description TEXT,
    image VARCHAR(255),
    FOREIGN KEY (category_id)
    REFERENCES Category(category_id)
);



# Stock Table
CREATE TABLE Stock (
    stock_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNIQUE,
    available_quantity INT NOT NULL,
    last_updated DATE,
    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);




# Customer Table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    address TEXT,
    password VARCHAR(255) NOT NULL
);


# Cart Table
CREATE TABLE Cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    created_at DATE,
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);




# Cart_Items Table
CREATE TABLE Cart_Items (
    cart_items_id INT AUTO_INCREMENT PRIMARY KEY,
    cart_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (cart_id)
    REFERENCES Cart(cart_id),
     FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


#Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    delivery_address TEXT,
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);


# Orders_Details Table
CREATE TABLE Order_Details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);


# Payment Table
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNIQUE,
    payment_mode VARCHAR(50),
    transaction_id VARCHAR(100),
    payment_status VARCHAR(50),
    payment_date DATE,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);

SHOW TABLES;

DESC Category;

DESC Product;

DESC Customer;

ALTER TABLE Product
ADD price DECIMAL(10,2) NOT NULL;

DESC Product;


# Inserting data 
#for Category
INSERT INTO Category (category_name, description)
VALUES
('Milk', 'Fresh milk products'),
('Yogurt', 'Yogurt and curd products'),
('Butter', 'Butter products'),
('Cheese', 'Cheese products'),
('Ice Cream', 'Frozen dairy products');

SELECT * FROM Category;

 # for product
INSERT INTO Product
(category_id, product_name, brand, price, quantity, manufactured_date, expiry_date, description, image)
VALUES
(1, 'Fresh Milk 1L', 'Anchor', 420.00, 100, '2025-07-01', '2025-07-08', 'Fresh cow milk', 'milk1.jpg'),

(1, 'Fresh Milk 500ml', 'Highland', 220.00, 80, '2025-07-02', '2025-07-09', 'Fresh milk', 'milk2.jpg'),

(2, 'Greek Yogurt', 'Highland', 350.00, 60, '2025-07-02', '2025-07-15', 'Healthy yogurt', 'yogurt.jpg'),

(3, 'Salted Butter', 'Kotmale', 550.00, 50, '2025-07-01', '2025-08-20', 'Creamy butter', 'butter.jpg'),

(4, 'Cheddar Cheese', 'Anchor', 850.00, 40, '2025-07-03', '2025-09-15', 'Cheddar cheese', 'cheese.jpg');

SELECT * FROM Product;


# for Stock
INSERT INTO Stock(product_id, available_quantity, last_updated) VALUES
(1,100,NOW()),
(2,80,NOW()),
(3,60,NOW()),
(4,50,NOW()),
(5,40,NOW());

SELECT * FROM Stock;

 # for Customer
INSERT INTO Customer
(name, phone, email, address, password)
VALUES
('Ananya','0712345678','ananya@gmail.com','Delhi','12345'),

('Vijaylaxmi','0771234567','vijaylaxmi@gmail.com','Bangalore','12345'),

('Hamsalekha','0765556677','hamsalekha@gmail.com','Chennai','12345');

SELECT * FROM Customer;


# for Cart
INSERT INTO Cart
(customer_id, created_at)
VALUES
(1,NOW()),
(2,NOW()),
(3,NOW());

SELECT * FROM Cart;



# for Cart_Items
INSERT INTO Cart_Items
(cart_id, product_id, quantity, price, subtotal)
VALUES
(1,1,2,420.00,840.00),

(1,3,1,350.00,350.00),

(2,4,2,550.00,1100.00),

(3,5,1,850.00,850.00);

SELECT * FROM Cart_Items;


#for  Orders
INSERT INTO Orders
(customer_id, order_date, total_amount, payment_method, order_status, delivery_address)
VALUES
(1,NOW(),1190.00,'Card','Pending','Delhi'),

(2,NOW(),1100.00,'Cash','Delivered','Bangalore'),

(3,NOW(),850.00,'Card','Processing','Chennai');

SELECT * FROM Orders;


#for Orders_Details
INSERT INTO Order_Details
(order_id, product_id, quantity, price, subtotal)
VALUES
(1,1,2,420.00,840.00),

(1,3,1,350.00,350.00),

(2,4,2,550.00,1100.00),

(3,5,1,850.00,850.00);

SELECT * FROM Order_Details;


# for Payment
INSERT INTO Payment
(order_id, payment_mode, transaction_id, payment_status, payment_date)
VALUES
(1,'Card','TXN10001','Success',NOW()),

(2,'Cash','TXN10002','Success',NOW()),

(3,'Card','TXN10003','Pending',NOW());

SELECT * FROM Payment;

# JOIN Queries
#Customer Orders
SELECT o.order_id,o.order_date,
o.total_amount,
o.order_status
FROM Customer c
JOIN Orders o
ON c.customer_id = o.customer_id;

# Product with Category
SELECT 
p.product_name,
c.category_name,
p.price,
p.quantity
FROM Product p
JOIN Category c
ON p.category_id = c.category_id;


# Order Details Full Info
SELECT 
o.order_id,
p.product_name,
od.quantity,
od.price,
od.subtotal
FROM Order_Details od
JOIN Orders o ON od.order_id = o.order_id
JOIN Product p ON od.product_id = p.product_id;

#Cart Details
SELECT 
cu.name,
p.product_name,
ci.quantity,
ci.subtotal
FROM Cart_Items ci
JOIN Cart ca ON ci.cart_id = ca.cart_id
JOIN Customer cu ON ca.customer_id = cu.customer_id
JOIN Product p ON ci.product_id = p.product_id;


#Total Sales
SELECT SUM(total_amount) AS total_sales
FROM Orders;

#Total Customers
SELECT COUNT(*) AS total_customers
FROM Customer;

#Stock Report
SELECT 
p.product_name,
s.available_quantity
FROM Stock s
JOIN Product p ON s.product_id = p.product_id;


