<%@page import="com.dairyproduct.dto.Product"%>

<%

Product p=(Product)request.getAttribute("product");

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<form action="updateProduct"

method="post">

<input type="hidden"

name="productId"

value="<%=p.getProductId()%>">

<input class="form-control mb-3"

type="text"

name="productName"

value="<%=p.getProductName()%>">

<input class="form-control mb-3"

type="text"

name="brand"

value="<%=p.getBrand()%>">

<input class="form-control mb-3"

type="number"

step="0.01"

name="price"

value="<%=p.getPrice()%>">

<input class="form-control mb-3"

type="number"

name="quantity"

value="<%=p.getQuantity()%>">

<textarea

class="form-control mb-3"

name="description">

<%=p.getDescription()%>

</textarea>

<button class="btn btn-warning">

Update Product

</button>

</form>

</div>

</body>

</html>