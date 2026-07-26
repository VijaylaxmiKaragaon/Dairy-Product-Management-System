<%@ page contentType="text/html;charset=UTF-8"%>

<%
double revenue = (Double)request.getAttribute("revenue");
int orders = (Integer)request.getAttribute("orders");
int customers = (Integer)request.getAttribute("customers");
int products = (Integer)request.getAttribute("products");
%>

<!DOCTYPE html>

<html>
<head>

<title>Revenue Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">
Admin Statistics Dashboard
</h2>

<div class="row">

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">
<h5>Total Revenue</h5>
<h2>₹ <%= revenue %></h2>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">
<h5>Total Orders</h5>
<h2><%= orders %></h2>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">
<h5>Total Customers</h5>
<h2><%= customers %></h2>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card shadow text-center">
<div class="card-body">
<h5>Total Products</h5>
<h2><%= products %></h2>
</div>
</div>
</div>

</div>

</div>

</body>
</html>
