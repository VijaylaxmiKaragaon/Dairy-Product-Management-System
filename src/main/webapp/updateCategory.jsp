<%@page import="com.dairyproduct.dto.Category"%>

<%

Category category=(Category)request.getAttribute("category");

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Category</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-warning">

<h3>

Update Category

</h3>

</div>

<div class="card-body">

<form action="updateCategory"

method="post">

<input type="hidden"

name="categoryId"

value="<%=category.getCategoryId()%>">

<div class="mb-3">

<label>

Category Name

</label>

<input

type="text"

class="form-control"

name="categoryName"

value="<%=category.getCategoryName()%>">

</div>

<div class="mb-3">

<label>

Description

</label>

<textarea

class="form-control"

name="description"

rows="4"><%=category.getDescription()%></textarea>

</div>

<button

class="btn btn-primary">

Update

</button>

<a href="viewCategory"

class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>