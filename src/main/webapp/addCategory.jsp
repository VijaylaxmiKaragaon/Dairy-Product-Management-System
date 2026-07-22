<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Category</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background: linear-gradient(135deg,#1565C0,#42A5F5);
	min-height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	font-family:'Segoe UI',sans-serif;
}

.card{
	border:none;
	border-radius:20px;
	overflow:hidden;
	box-shadow:0 10px 30px rgba(0,0,0,0.2);
}

.card-header{
	background:linear-gradient(135deg,#0D47A1,#1976D2);
	padding:20px;
	text-align:center;
}

.card-header h2{
	margin:0;
	font-weight:bold;
	color:white;
}

.card-body{
	padding:30px;
	background:white;
}

.form-control{
	border-radius:10px;
	padding:12px;
}

.form-control:focus{
	box-shadow:0 0 10px rgba(25,118,210,.4);
	border-color:#1976D2;
}

.btn-add{
	background:#28a745;
	color:white;
	border:none;
	padding:10px 25px;
	border-radius:10px;
	font-weight:bold;
}

.btn-add:hover{
	background:#218838;
}

.btn-back{
	background:#6c757d;
	color:white;
	border:none;
	padding:10px 25px;
	border-radius:10px;
	font-weight:bold;
	text-decoration:none;
}

.btn-back:hover{
	background:#5a6268;
	color:white;
}

.logo{
	font-size:45px;
	text-align:center;
	margin-bottom:10px;
}

</style>

</head>
<body>

<div class="container">

	<div class="row justify-content-center">

		<div class="col-md-6">

			<div class="card">

				<div class="card-header">

					<div class="logo">🥛</div>

					<h2>Add Dairy Category</h2>

				</div>

				<div class="card-body">

					<form action="addCategory" method="post">

						<div class="mb-3">

							<label class="form-label fw-bold">
								Category Name
							</label>

							<input type="text"
								class="form-control"
								name="categoryName"
								placeholder="Enter Category Name"
								required>

						</div>

						<div class="mb-4">

							<label class="form-label fw-bold">
								Description
							</label>

							<textarea
								class="form-control"
								name="description"
								rows="4"
								placeholder="Enter Category Description"></textarea>

						</div>

						<div class="d-flex justify-content-between">

							<button type="submit"
								class="btn-add">

								Add Category

							</button>

							<a href="home.jsp"
								class="btn-back">

								Back Home

							</a>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

</body>
</html>