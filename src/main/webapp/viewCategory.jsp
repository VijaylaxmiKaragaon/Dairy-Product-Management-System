<%@page import="java.util.List"%>
<%@page import="com.dairyproduct.dto.Category"%>

<%
List<Category> list =
(List<Category>)request.getAttribute("categories");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Categories</title>

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
	background:linear-gradient(135deg,#7B1FA2,#AB47BC);
	color:white;
	text-align:center;
	padding:50px;
}

.header h1{
	font-weight:bold;
}

.category-card{
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
	vertical-align:middle;
	text-align:center;
}

.btn-update{
	background:#FFC107;
	border:none;
	color:black;
	font-weight:bold;
}

.btn-update:hover{
	background:#FFB300;
}

.btn-delete{
	background:#dc3545;
	border:none;
	font-weight:bold;
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

	<h1>📂 Category Management</h1>

	<p>
		View, Update and Delete Product Categories
	</p>

</div>

<!-- Category Table -->

<div class="container mt-5">

	<div class="card category-card">

		<div class="card-body">

			<h3 class="text-center mb-4">
				Category List
			</h3>

			<table class="table table-hover table-bordered">

				<thead>

					<tr>

						<th>ID</th>
						<th>Category Name</th>
						<th>Description</th>
						<th>Update</th>
						<th>Delete</th>

					</tr>

				</thead>

				<tbody>

				<%
				if(list!=null && !list.isEmpty()){

					for(Category c:list){
				%>

					<tr>

						<td>
							<%=c.getCategoryId()%>
						</td>

						<td>
							<%=c.getCategoryName()%>
						</td>

						<td>
							<%=c.getDescription()%>
						</td>

						<td>

							<a href="updateCategory?categoryId=<%=c.getCategoryId()%>"
							   class="btn btn-update btn-sm">

								✏️ Update

							</a>

						</td>

						<td>

							<a href="deleteCategory?categoryId=<%=c.getCategoryId()%>"
							   class="btn btn-delete btn-sm"
							   onclick="return confirm('Are you sure you want to delete this category?')">

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

						<td colspan="5" class="text-center text-danger">

							No Categories Available

						</td>

					</tr>

				<%
				}
				%>

				</tbody>

			</table>

			<div class="text-center mt-4">

				<a href="addCategory.jsp"
				   class="btn-add">

					➕ Add New Category

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