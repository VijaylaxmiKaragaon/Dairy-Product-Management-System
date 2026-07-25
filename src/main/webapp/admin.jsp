<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background:#f5f7fa;
	font-family:'Segoe UI',sans-serif;
}

.navbar{
	background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.hero{
	background:linear-gradient(rgba(0,0,0,.4),rgba(0,0,0,.4)),
	url("https://images.unsplash.com/photo-1563636619-e9143da7973");
	background-size:cover;
	background-position:center;
	padding:70px;
	text-align:center;
	color:white;
}

.hero h1{
	font-size:3rem;
	font-weight:bold;
}

.dashboard-card{
	border:none;
	border-radius:20px;
	box-shadow:0 8px 20px rgba(0,0,0,.1);
	transition:.3s;
}

.dashboard-card:hover{
	transform:translateY(-10px);
}

.card-body{
	padding:30px;
}

.icon{
	font-size:55px;
	margin-bottom:15px;
}

.btn-manage{
	border-radius:10px;
	font-weight:bold;
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
			🥛 Dairy Admin Panel
		</a>

	</div>

</nav>

<!-- Hero Section -->

<div class="hero">

	<h1>Admin Dashboard</h1>

	<p>
		Manage Products, Categories, Stock, Orders and Payments
	</p>

</div>

<!-- Dashboard Cards -->

<div class="container mt-5">

	<div class="row g-4">

		<!-- Category -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">📂</div>

					<h4>Categories</h4>

					<p>Manage dairy categories</p>

					<a href="addCategory.jsp"
						class="btn btn-primary btn-manage">

						Manage

					</a>

				</div>

			</div>

		</div>

		<!-- Products -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">🥛</div>

					<h4>Products</h4>

					<p>Add and manage products</p>

					<a href="viewProducts"
						class="btn btn-success btn-manage">

						Manage

					</a>

				</div>

			</div>

		</div>

		<!-- Stock -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">📦</div>

					<h4>Stock</h4>

					<p>Monitor inventory levels</p>

					<a href="viewStock"
						class="btn btn-warning btn-manage">

						Manage

					</a>

				</div>

			</div>

		</div>

		<!-- Orders -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">🛒</div>

					<h4>Orders</h4>

					<p>Track customer orders</p>

					<a href="viewOrders"
						class="btn btn-danger btn-manage">

						Manage

					</a>

				</div>

			</div>

		</div>

		<!-- Payments -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">💳</div>

					<h4>Payments</h4>

					<p>View payment transactions</p>

					<a href="viewPayment"
						class="btn btn-info text-white btn-manage">

						View

					</a>

				</div>

			</div>

		</div>

		<!-- Logout -->

		<div class="col-md-4">

			<div class="card dashboard-card">

				<div class="card-body text-center">

					<div class="icon">🚪</div>

					<h4>Logout</h4>

					<p>Securely exit dashboard</p>

					<a href="logout"
						class="btn btn-secondary btn-manage">

						Logout

					</a>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- Quick Statistics -->

<div class="container mt-5">

	<div class="row text-center">

		<div class="col-md-3">

			<div class="card shadow-sm">

				<div class="card-body">

					<h3>🥛</h3>
					<h4>Products</h4>
					<h2>150+</h2>

				</div>

			</div>

		</div>

		<div class="col-md-3">

			<div class="card shadow-sm">

				<div class="card-body">

					<h3>📦</h3>
					<h4>Stock Items</h4>
					<h2>500+</h2>

				</div>

			</div>

		</div>

		<div class="col-md-3">

			<div class="card shadow-sm">

				<div class="card-body">

					<h3>🛒</h3>
					<h4>Orders</h4>
					<h2>100+</h2>

				</div>

			</div>

		</div>

		<div class="col-md-3">

			<div class="card shadow-sm">

				<div class="card-body">

					<h3>💰</h3>
					<h4>Revenue</h4>
					<h2>₹50K+</h2>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- Footer -->

<div class="footer">

	<h5>
		© 2026 Dairy Product Management System | Admin Dashboard
	</h5>

</div>

</body>
</html>