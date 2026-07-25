<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.Stock"%>

<%
List<Stock> stocks=(List<Stock>)request.getAttribute("stocks");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock Management</title>

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
	box-shadow:0 10px 25px rgba(0,0,0,.1);
	overflow:hidden;
}

.table th{
	background:#1565C0;
	color:white;
	text-align:center;
}

.table td{
	text-align:center;
	vertical-align:middle;
}

.btn-update{
	background:#FFC107;
	color:black;
	font-weight:bold;
	border:none;
}

.btn-update:hover{
	background:#FFB300;
}

.btn-delete{
	background:#dc3545;
	color:white;
	font-weight:bold;
	border:none;
}

.btn-delete:hover{
	background:#c82333;
}

.btn-add{
	background:#28a745;
	color:white;
	font-weight:bold;
	padding:10px 20px;
	border-radius:10px;
	text-decoration:none;
}

.btn-add:hover{
	background:#218838;
	color:white;
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

	<h1>📦 Stock Management</h1>

	<p>
		Manage Product Inventory and Available Stock
	</p>

</div>

<!-- Stock Table -->

<div class="container mt-5">

	<div class="card stock-card">

		<div class="card-body">

			<h3 class="text-center mb-4">
				Stock Details
			</h3>

			<table class="table table-hover table-bordered">

				<thead>

					<tr>

						<th>Stock ID</th>
						<th>Product ID</th>
						<th>Available Quantity</th>
						<th>Last Updated</th>
						<th>Update</th>
						<th>Delete</th>

					</tr>

				</thead>

				<tbody>

				<%
				if(stocks!=null && !stocks.isEmpty()){

					for(Stock s:stocks){
				%>

					<tr>

						<td><%=s.getStockId()%></td>

						<td><%=s.getProductId()%></td>

						<td>
							<span class="badge bg-success">
								<%=s.getAvailableQuantity()%>
							</span>
						</td>

						<td><%=s.getLastUpdated()%></td>

						<td>

							<a href="updateStock?stockId=<%=s.getStockId()%>"
							   class="btn btn-update btn-sm">

								✏️ Update

							</a>

						</td>

						<td>

							<a href="deleteStock?stockId=<%=s.getStockId()%>"
							   class="btn btn-delete btn-sm"
							   onclick="return confirm('Are you sure you want to delete this stock?')">

								🗑 Delete

							</a>

						</td>

					</tr>

				<%
					}
				}
				else{
				%>

					<tr>

						<td colspan="6"
							class="text-center text-danger">

							No Stock Records Available

						</td>

					</tr>

				<%
				}
				%>

				</tbody>

			</table>

			<div class="text-center mt-4">

				<a href="addStock"
				   class="btn-add">

					➕ Add New Stock

				</a>

				<a href="admin.jsp"
				   class="btn btn-secondary ms-2">

					🏠 Dashboard

				</a>

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