<%@page import="com.dairyproduct.dto.Product"%>

<%
Product product=(Product)request.getAttribute("product");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Add To Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-success text-white">

<h3>Add Product To Cart</h3>

</div>

<div class="card-body">

<form action="addToCart" method="post">

<input type="hidden"
name="productId"
value="<%=product.getProductId()%>">

<input type="hidden"
name="price"
value="<%=product.getPrice()%>">

<div class="mb-3">

<label>Product Name</label>

<input type="text"
class="form-control"
value="<%=product.getProductName()%>"
readonly>

</div>

<div class="mb-3">

<label>Price</label>

<input type="text"
class="form-control"
value="<%=product.getPrice()%>"
readonly>

</div>

<div class="mb-3">

<label>Quantity</label>

<input type="number"
name="quantity"
class="form-control"
value="1"
min="1">

</div>

<button class="btn btn-primary">

Add To Cart

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>