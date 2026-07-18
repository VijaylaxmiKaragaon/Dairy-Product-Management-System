<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Payment</h3>

</div>

<div class="card-body">

<form action="payment" method="post">

<div class="mb-3">

<label>Order ID</label>

<input type="number"
class="form-control"
name="orderId"
required>

</div>

<div class="mb-3">

<label>Payment Mode</label>

<select
class="form-control"
name="paymentMode">

<option>UPI</option>

<option>Credit Card</option>

<option>Debit Card</option>

<option>Cash On Delivery</option>

</select>

</div>

<div class="mb-3">

<label>Transaction ID</label>

<input type="text"
class="form-control"
name="transactionId">

</div>

<button
class="btn btn-success w-100">

Pay Now

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>