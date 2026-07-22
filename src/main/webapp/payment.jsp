<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background:#f5f7fa;
	font-family:'Segoe UI',sans-serif;
}

.navbar{
	background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.payment-header{
	background:linear-gradient(135deg,#4CAF50,#66BB6A);
	color:white;
	text-align:center;
	padding:50px;
}

.payment-header h1{
	font-weight:bold;
}

.payment-card{
	border:none;
	border-radius:20px;
	overflow:hidden;
	box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.card-header{
	background:linear-gradient(135deg,#1565C0,#42A5F5);
	color:white;
	text-align:center;
	padding:20px;
}

.form-control,
.form-select{
	border-radius:10px;
	padding:12px;
}

.form-control:focus,
.form-select:focus{
	border-color:#42A5F5;
	box-shadow:0 0 10px rgba(66,165,245,.4);
}

.btn-pay{
	background:#28a745;
	color:white;
	border:none;
	padding:12px;
	font-size:18px;
	font-weight:bold;
	border-radius:10px;
}

.btn-pay:hover{
	background:#218838;
	color:white;
}

.payment-icon{
	font-size:70px;
	text-align:center;
	margin-bottom:15px;
}

.footer{
	background:#1565C0;
	color:white;
	text-align:center;
	padding:15px;
	margin-top:50px;
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">

	<div class="container">

		<a class="navbar-brand fw-bold">
			🥛 DairyMart
		</a>

	</div>

</nav>

<!-- Header -->

<div class="payment-header">

	<h1>💳 Secure Payment</h1>

	<p>
		Complete your payment to confirm the order
	</p>

</div>

<!-- Payment Form -->

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-md-6">

			<div class="card payment-card">

				<div class="card-header">

					<h3>Payment Details</h3>

				</div>

				<div class="card-body p-4">

					<div class="payment-icon">
						💰
					</div>

					<form action="payment" method="post">

						<div class="mb-3">

							<label class="form-label fw-bold">
								Order ID
							</label>

							<input type="number"
								class="form-control"
								name="orderId"
								placeholder="Enter Order ID"
								required>

						</div>

						<div class="mb-3">

							<label class="form-label fw-bold">
								Payment Method
							</label>

							<select class="form-select"
									name="paymentMode">

								<option value="UPI">
									UPI
								</option>

								<option value="Credit Card">
									Credit Card
								</option>

								<option value="Debit Card">
									Debit Card
								</option>

								<option value="Cash On Delivery">
									Cash On Delivery
								</option>

							</select>

						</div>

						<div class="mb-4">

							<label class="form-label fw-bold">
								Transaction ID
							</label>

							<input type="text"
								class="form-control"
								name="transactionId"
								placeholder="Enter Transaction ID">

						</div>

						<button class="btn btn-pay w-100">

							Pay Now

						</button>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- Footer -->

<div class="footer">

	<h5>
		© 2026 Dairy Product Management System
	</h5>

</div>

</body>
</html>