<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dairyproduct.dto.Admin"%>

<%
Admin admin = (Admin) session.getAttribute("admin");

if (admin == null) {
	response.sendRedirect("../adminLogin.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
	background:#f8f9fa;
}

.header{
	background:#198754;
	color:white;
	padding:15px 30px;
	display:flex;
	justify-content:space-between;
	align-items:center;
}

.card{
	border-radius:10px;
	transition:.3s;
}

.card:hover{
	transform:translateY(-5px);
	box-shadow:0 4px 10px rgba(0,0,0,.2);
}
</style>

</head>
<body>

<div class="header">
	<h3>Dairy Product Management</h3>

	<div>
		<b><%= admin.getName() %></b> |
		<%= admin.getRole() %>

		<a href="../adminLogout" class="btn btn-light btn-sm ms-3">
			Logout
		</a>
	</div>
</div>

<div class="container mt-5">

	<div class="row g-4">

		<div class="col-md-4">
			<div class="card p-4 text-center">
				<h4>📂 Category</h4>
				<a href="../viewCategory" class="btn btn-success mt-3">
					Manage
				</a>
			</div>
		</div>

		<div class="col-md-4">
			<div class="card p-4 text-center">
				<h4>🥛 Products</h4>
				<a href="../viewProducts" class="btn btn-primary mt-3">
					Manage
				</a>
			</div>
		</div>

		<div class="col-md-4">
			<div class="card p-4 text-center">
				<h4>📦 Stock</h4>
				<a href="../viewStock" class="btn btn-warning mt-3">
					Manage
				</a>
			</div>
		</div>

		<div class="col-md-4">
			<div class="card p-4 text-center">
				<h4>🛒 Orders</h4>
				<a href="../viewOrders" class="btn btn-info mt-3">
					View
				</a>
			</div>
		</div>

		<div class="col-md-4">
			<div class="card p-4 text-center">
				<h4>💳 Payments</h4>
				<a href="../viewPayment" class="btn btn-danger mt-3">
					View
				</a>
			</div>
		</div>

	</div>

</div>

</body>
</html>