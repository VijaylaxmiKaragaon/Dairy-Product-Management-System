<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container">

<a class="navbar-brand">

🥛 Dairy Admin Panel

</a>

</div>

</nav>

<div class="container mt-5">

<div class="row">

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Category</h4>

<a href="addCategory.jsp"

class="btn btn-primary">

Manage

</a>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Products</h4>

<a href="viewProducts"

class="btn btn-success">

Manage

</a>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Stock</h4>

<a href="viewStock"

class="btn btn-warning">

Manage

</a>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Orders</h4>

<a href="viewOrders"

class="btn btn-danger">

Manage

</a>

</div>

</div>

</div>

</div>

<br>

<div class="row">

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Payments</h4>

<a href="viewPayment"

class="btn btn-info">

View

</a>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card shadow">

<div class="card-body text-center">

<h4>Logout</h4>

<a href="logout"

class="btn btn-secondary">

Logout

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>