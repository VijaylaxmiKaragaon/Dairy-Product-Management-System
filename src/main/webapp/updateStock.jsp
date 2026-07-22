<%@ page import="com.dairyproduct.dto.Stock"%>

<%
Stock stock=(Stock)request.getAttribute("stock");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Stock</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background:#f5f7fa;
	font-family:'Segoe UI',sans-serif;
}

.navbar{
	background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.header{
	background:linear-gradient(135deg,#FF9800,#FFC107);
	color:white;
	text-align:center;
	padding:50px;
}

.header h1{
	font-weight:bold;
}

.stock-card{
	border:none;
	border-radius:20px;
	overflow:hidden;
	box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.card-header{
	background:linear-gradient(135deg,#FF9800,#FFC107);
	color:white;
	text-align:center;
	padding:20px;
}

.form-control{
	border-radius:10px;
	padding:12px;
}

.form-control:focus{
	border-color:#42A5F5;
	box-shadow:0 0 10px rgba(66,165,245,.4);
}

.btn-update{
	background:#1565C0;
	color:white;
	border:none;
	padding:12px;
	font-size:18px;
	font-weight:bold;
	border-radius:10px;
}

.btn-update:hover{
	background:#0D47A1;
	color:white;
}

.btn-cancel{
	background:#6c757d;
	color:white;
	border-radius:10px;
	padding:12px;
	font-weight:bold;
	text-decoration:none;
}

.btn-cancel:hover{
	background:#5a6268;
	color:white;
}

.stock-icon{
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
			🥛 DairyMart Admin
		</a>

	</div>

</nav>

<!-- Header -->

<div class="header">

	<h1>📦 Update Stock</h1>

	<p>
		Manage product inventory and stock availability
	</p>

</div>

<!-- Update Stock Form -->

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-md-7">

			<div class="card stock-card">

				<div class="card-header">

					<h3>Stock Information</h3>

				</div>

				<div class="card-body p-4">

					<div class="stock-icon">
						📊
					</div>

					<form action="updateStock" method="post">

						<input type="hidden"
							   name="stockId"
							   value="<%=stock.getStockId()%>">

						<input type="hidden"
							   name="productId"
							   value="<%=stock.getProductId()%>">

						<div class="mb-3">

							<label class="form-label fw-bold">
								Available Quantity
							</label>

							<input type="number"
								   name="availableQuantity"
								   class="form-control"
								   value="<%=stock.getAvailableQuantity()%>"
								   required>

						</div>

						<div class="mb-4">

							<label class="form-label fw-bold">
								Last Updated Date
							</label>

							<input type="date"
								   name="lastUpdated"
								   class="form-control"
								   value="<%=stock.getLastUpdated()%>"
								   required>

						</div>

						<div class="d-grid gap-2">

							<button class="btn btn-update">

								💾 Update Stock

							</button>

							<a href="viewStock"
							   class="btn btn-cancel">

								❌ Cancel

							</a>

						</div>

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