<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Place Order</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>Place Order</h3>

</div>

<div class="card-body">

<form action="placeOrder" method="post">

<div class="mb-3">

<label>Total Amount</label>

<input type="number"
step="0.01"
name="totalAmount"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Payment Method</label>

<select class="form-control"
name="paymentMethod">

<option>Cash On Delivery</option>

<option>UPI</option>

<option>Debit Card</option>

<option>Credit Card</option>

</select>

</div>

<div class="mb-3">

<label>Delivery Address</label>

<textarea
name="deliveryAddress"
class="form-control"
rows="4"></textarea>

</div>

<button class="btn btn-success">

Place Order

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>