<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.dairyproduct.dto.Customer" %>

<%
Customer admin =
(Customer)session.getAttribute("customer");

if(admin == null || !"ADMIN".equals(admin.getRole())){
response.sendRedirect("login.jsp");
return;
}
%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:#f4f6f9;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:#1565C0;
}

.sidebar{
    background:#0D47A1;
    min-height:100vh;
    color:white;
}

.sidebar a{
    color:white;
    text-decoration:none;
    display:block;
    padding:15px;
    border-bottom:1px solid rgba(255,255,255,.2);
}

.sidebar a:hover{
    background:#1976D2;
}

.card-box{
    border:none;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.stat{
    font-size:35px;
    font-weight:bold;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container-fluid">

<span class="navbar-brand fw-bold">
🥛 DairyMart Admin Panel
</span>

<a href="logout"
class="btn btn-danger">
Logout </a>

</div>

</nav>

<div class="container-fluid">

<div class="row">

<!-- Sidebar -->

<div class="col-md-2 sidebar p-0">

<h4 class="text-center py-3">
Admin Menu
</h4>

<a href="adminProducts">
🛒 Manage Products
</a>

<a href="viewCustomers">
👥 Manage Customers
</a>

<a href="viewOrders">
📦 Manage Orders
</a>

<a href="stockManagement">
📊 Stock Management
</a>

<a href="lowStockProducts">
⚠ Low Stock Products
</a>

</div>

<!-- Content -->

<div class="col-md-10 p-4">

<h2>
Welcome Admin,
<%=admin.getName()%>
</h2>

<hr>

<div class="row">

<div class="col-md-3">

<div class="card card-box bg-primary text-white">

<div class="card-body text-center">

<h5>Total Products</h5>

<div class="stat">
${totalProducts}
</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box bg-success text-white">

<div class="card-body text-center">

<h5>Total Customers</h5>

<div class="stat">
${totalCustomers}
</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box bg-warning text-dark">

<div class="card-body text-center">

<h5>Total Orders</h5>

<div class="stat">
${totalOrders}
</div>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card card-box bg-danger text-white">

<div class="card-body text-center">

<h5>Low Stock</h5>

<div class="stat">
${lowStockCount}
</div>

</div>

</div>

</div>

</div>

<br>

<div class="card card-box">

<div class="card-header bg-dark text-white">

Quick Actions

</div>

<div class="card-body">

<a href="addProduct.jsp"
class="btn btn-success">

➕ Add Product

</a>

<a href="adminProducts"
class="btn btn-primary">

🛒 View Products

</a>

<a href="viewOrders"
class="btn btn-warning">

📦 Orders

</a>

<a href="stockManagement"
class="btn btn-info">

📊 Stock

</a>

</div>

</div>

</div>

</div>

</div>

</body>
</html>
