<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.Product"%>

<%
List<Product> products=(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Stock</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>Add Stock</h3>

</div>

<div class="card-body">

<form action="addStock" method="post">

<div class="mb-3">

<label>Select Product</label>

<select class="form-control" name="productId">

<%
if(products!=null){
for(Product p:products){
%>

<option value="<%=p.getProductId()%>">
<%=p.getProductName()%>
</option>

<%
}
}
%>

</select>

</div>

<div class="mb-3">

<label>Available Quantity</label>

<input type="number"
name="availableQuantity"
class="form-control">

</div>

<div class="mb-3">

<label>Last Updated</label>

<input type="date"
name="lastUpdated"
class="form-control">

</div>

<button class="btn btn-success">

Add Stock

</button>

<a href="home.jsp"
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