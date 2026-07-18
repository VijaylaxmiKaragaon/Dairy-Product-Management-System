<%@page import="java.util.List"%>
<%@page import="com.dairyproduct.dto.Category"%>

<%
List<Category> categories=(List<Category>)request.getAttribute("categories");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>Add Product</h3>

</div>

<div class="card-body">

<form action="addProduct" method="post">

<div class="mb-3">

<label>Category</label>

<select name="categoryId" class="form-control">

<%
if(categories!=null){
for(Category c:categories){
%>

<option value="<%=c.getCategoryId()%>">

<%=c.getCategoryName()%>

</option>

<%
}
}
%>

</select>

</div>

<div class="mb-3">

<label>Product Name</label>

<input type="text"
name="productName"
class="form-control">

</div>

<div class="mb-3">

<label>Brand</label>

<input type="text"
name="brand"
class="form-control">

</div>

<div class="mb-3">

<label>Price</label>

<input type="number"
step="0.01"
name="price"
class="form-control">

</div>

<div class="mb-3">

<label>Quantity</label>

<input type="number"
name="quantity"
class="form-control">

</div>

<div class="mb-3">

<label>Manufacture Date</label>

<input type="date"
name="manufactureDate"
class="form-control">

</div>

<div class="mb-3">

<label>Expiry Date</label>

<input type="date"
name="expiryDate"
class="form-control">

</div>

<div class="mb-3">

<label>Description</label>

<textarea
name="description"
class="form-control">
</textarea>

</div>

<div class="mb-3">

<label>Image URL</label>

<input type="text"
name="image"
class="form-control">

</div>

<button class="btn btn-success">

Save Product

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>