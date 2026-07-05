# 🥛 Dairy Product Management System

A Java-based web application developed using **J2EE (Servlet, JSP, JDBC)** to manage dairy products, customer orders, inventory, and payments. This project follows the **MVC architecture** and provides a simple and efficient way to handle dairy product sales.

---

## 📌 Project Overview

The Dairy Product Management System is designed to simplify the management of dairy products by allowing customers to browse products, add items to their cart, place orders, and make payments. The system also maintains inventory and order details.

---

## 🚀 Features

### 👤 Customer
- Customer Registration
- Customer Login
- View Products
- Browse Products by Category
- Add Products to Cart
- Update Cart Items
- Place Orders
- View Order History
- Make Payments

### 🛍 Product Management
- Add Product
- Update Product
- Delete Product
- View Products
- Product Category Management

### 📦 Inventory Management
- Add Stock
- Update Stock
- View Stock Availability

### 💳 Payment
- Online Payment Details
- Payment Status
- Transaction Information

---

## 🛠 Technologies Used

### Frontend
- HTML5
- CSS3
- Bootstrap
- JSP

### Backend
- Java
- Servlets
- JDBC

### Database
- MySQL

### Server
- Apache Tomcat

### IDE
- Eclipse IDE

### Version Control
- Git
- GitHub

---

## 📂 Project Structure

```
Dairy_Product_Management_System
│
├── src
│   ├── dao
│   ├── daoimpl
│   ├── dto
│   ├── servlet
│   ├── util
│   └── filter
│
├── WebContent
│   ├── css
│   ├── images
│   ├── js
│   ├── jsp
│   └── WEB-INF
│
├── database
│   └── dairydb.sql
│
└── README.md
```

---

## 🗄 Database Tables

- Category
- Product
- Stock
- Customer
- Cart
- Cart_Items
- Orders
- Order_Details
- Payment

---

## 🔗 Database Relationships

- Category → Product (1 : M)
- Product → Stock (1 : 1)
- Customer → Cart (1 : 1)
- Cart → Cart_Items (1 : M)
- Product → Cart_Items (1 : M)
- Customer → Orders (1 : M)
- Orders → Order_Details (1 : M)
- Product → Order_Details (1 : M)
- Orders → Payment (1 : 1)

---

## 📋 Modules

### Category Module
- Add Category
- Update Category
- Delete Category
- View Categories

### Product Module
- Add Product
- Update Product
- Delete Product
- Search Product

### Customer Module
- Register
- Login
- Profile Management

### Cart Module
- Add to Cart
- Update Quantity
- Remove Item
- View Cart

### Order Module
- Place Order
- View Orders
- Order Details

### Payment Module
- Payment Processing
- Payment Status

### Stock Module
- Add Stock
- Update Stock
- View Stock

---

## 💻 Software Requirements

- Java JDK 8 or above
- Eclipse IDE
- Apache Tomcat 9+
- MySQL 8+
- MySQL Workbench
- Git

---

## ⚙️ Installation

1. Clone the repository

```bash
git clone https://github.com/your-username/Dairy_Product_Management_System.git
```

2. Import the project into Eclipse.

3. Create a MySQL database.

```sql
CREATE DATABASE dairydb;
```

4. Import the SQL file into MySQL.

5. Configure database credentials in `DBConnection.java`.

```java
String url = "jdbc:mysql://localhost:3306/dairydb";
String username = "root";
String password = "your_password";
```

6. Add Apache Tomcat Server.

7. Run the project.

---

## 📸 Screenshots

You can add screenshots here.

- Home Page
- Login Page
- Product Page
- Cart Page
- Order Page
- Payment Page

---

## 📖 Learning Outcomes

This project demonstrates:

- MVC Architecture
- J2EE Development
- JDBC Connectivity
- CRUD Operations
- Session Management
- Database Design
- Object-Oriented Programming
- Git & GitHub
- Java Collections
- Exception Handling

---

## 🌟 Future Enhancements

- Admin Dashboard
- Email Notifications
- Online Payment Gateway Integration
- Invoice Generation
- Product Image Upload
- Search & Filter
- Sales Reports
- Product Reviews
- Responsive UI Improvements

---
