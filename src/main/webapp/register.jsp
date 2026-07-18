<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card">

<div class="card-header bg-primary text-white">

<h3>Customer Registration</h3>

</div>

<div class="card-body">

<form action="register" method="post">

<div class="mb-3">

<label>Name</label>

<input type="text"
class="form-control"
name="name"
required>

</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
class="form-control"
name="email"
required>

</div>

<div class="mb-3">

<label>Phone</label>

<input type="text"
class="form-control"
name="phone">

</div>

<div class="mb-3">

<label>Address</label>

<textarea class="form-control"
name="address"></textarea>

</div>

<div class="mb-3">

<label>Password</label>

<input type="password"
class="form-control"
name="password"
required>

</div>

<button class="btn btn-success w-100">

Register

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>