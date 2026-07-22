<%@page import="com.dairyproduct.dto.Product"%>

<%
Product p=(Product)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>

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

.update-card{
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

.product-icon{
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

	<h1>🛒 Update Product</h1>

	<p>
		Modify product information and save changes
	</p>

</div>

<!-- Update Product Form -->

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-md-8">

			<div class="card update-card">

				<div class="card-header">

					<h3>Product Information</h3>

				</div>

				<div class="card-body p-4">

					<div class="product-icon">
						🥛
					</div>

					<form action="updateProduct" method="post">

						<input type="hidden"
							   name="productId"
							   value="<%=p.getProductId()%>">

						<div class="mb-3">

							<label class="form-label fw-bold">
								Product Name
							</label>

							<input class="form-control"
								   type="text"
								   name="productName"
								   value="<%=p.getProductName()%>"
								   required>

						</div>

						<div class="mb-3">

							<label class="form-label fw-bold">
								Brand Name
							</label>

							<input class="form-control"
								   type="text"
								   name="brand"
								   value="<%=p.getBrand()%>"
								   required>

						</div>

						<div class="mb-3">

							<label class="form-label fw-bold">
								Price (₹)
							</label>

							<input class="form-control"
								   type="number"
								   step="0.01"
								   name="price"
								   value="<%=p.getPrice()%>"
								   required>

						</div>

						<div class="mb-3">

							<label class="form-label fw-bold">
								Quantity
							</label>

							<input class="form-control"
								   type="number"
								   name="quantity"
								   value="<%=p.getQuantity()%>"
								   required>

						</div>

						<div class="mb-4">

							<label class="form-label fw-bold">
								Product Description
							</label>

							<textarea
								class="form-control"
								name="description"
								rows="4"
								required><%=p.getDescription()%></textarea>

						</div>

						<div class="d-grid gap-2">

							<button class="btn btn-update">

								💾 Update Product

							</button>

							<a href="viewProducts"
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