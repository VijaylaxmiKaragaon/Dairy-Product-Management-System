<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Category</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-md-6">

			<div class="card shadow">

				<div class="card-header bg-primary text-white">
					<h3>Add Category</h3>
				</div>

				<div class="card-body">

					<form action="addCategory" method="post">

						<div class="mb-3">
							<label class="form-label">Category Name</label>

							<input type="text"
								class="form-control"
								name="categoryName"
								required>
						</div>

						<div class="mb-3">
							<label>Description</label>

							<textarea
								class="form-control"
								name="description"
								rows="4"></textarea>
						</div>

						<button class="btn btn-success">
							Add Category
						</button>

						<a href="home.jsp"
							class="btn btn-secondary">
							Back
						</a>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

</body>
</html>