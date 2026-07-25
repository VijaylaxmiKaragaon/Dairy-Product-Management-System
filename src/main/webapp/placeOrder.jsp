<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Place Order</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background:#f5f7fa;
	font-family:'Segoe UI',sans-serif;
}

.navbar{
	background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.order-header{
	background:linear-gradient(135deg,#43A047,#66BB6A);
	color:white;
	text-align:center;
	padding:50px;
}

.order-header h1{
	font-weight:bold;
}

.order-card{
	border:none;
	border-radius:20px;
	overflow:hidden;
	box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.card-header{
	background:linear-gradient(135deg,#2E7D32,#4CAF50);
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

.btn-order{
	background:#28a745;
	color:white;
	border:none;
	padding:12px;
	font-size:18px;
	font-weight:bold;
	border-radius:10px;
}

.btn-order:hover{
	background:#218838;
	color:white;
}

.btn-cart{
	background:#6c757d;
	color:white;
	border-radius:10px;
	padding:12px 20px;
	text-decoration:none;
	font-weight:bold;
}

.btn-cart:hover{
	background:#5a6268;
	color:white;
}

.order-icon{
	font-size:70px;
	text-align:center;
	margin-bottom:15px;
}

.summary-card{
	border:none;
	border-radius:20px;
	box-shadow:0 8px 20px rgba(0,0,0,.1);
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

<div class="order-header">

	<h1>📦 Place Your Order</h1>

	<p>
		Review your order details and confirm purchase
	</p>

</div>

<!-- Order Form -->

<div class="container mt-5">

	<div class="row">

		<div class="col-md-8">

			<div class="card order-card">

				<div class="card-header">

					<h3>Order Information</h3>

				</div>

				<div class="card-body p-4">

					<div class="order-icon">
						🛒
					</div>

					<form action="placeOrder" method="post">

						<div class="mb-3">

							<label class="form-label fw-bold">
								Total Amount
							</label>

							<input type="number"
								step="0.01"
								name="totalAmount"
								class="form-control"
								placeholder="Enter Total Amount"
								required>

						</div>

						<div class="mb-3">

							<label class="form-label fw-bold">
								Payment Method
							</label>

							<select class="form-select"
									name="paymentMethod">

								<option>
									Cash On Delivery
								</option>

								<option>
									UPI
								</option>

								<option>
									Debit Card
								</option>

								<option>
									Credit Card
								</option>

							</select>

						</div>

						<div class="mb-4">

							<label class="form-label fw-bold">
								Delivery Address
							</label>

							<textarea
								name="deliveryAddress"
								class="form-control"
								rows="4"
								placeholder="Enter Delivery Address"
								required></textarea>

						</div>

						<button class="btn btn-order w-100">

							📦 Place Order

						</button>

						<div class="text-center mt-3">

							<a href="cart.jsp"
								class="btn-cart">

								⬅ Back To Cart

							</a>

						</div>

					</form>

				</div>

			</div>

		</div>

		<!-- Order Summary -->

		<div class="col-md-4">

			<div class="card summary-card">

				<div class="card-body">

					<h4 class="text-center">
						🧾 Order Summary
					</h4>

					<hr>

					<p>
						Products Selected
						<span class="float-end">
							3 Items
						</span>
					</p>

					<p>
						Delivery Charges
						<span class="float-end text-success">
							Free
						</span>
					</p>

					<hr>

					<h5>

						Estimated Delivery

						<span class="float-end">

							2-3 Days

						</span>

					</h5>

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