<%@ page import="com.dairyproduct.dto.Stock"%>

<%
Stock stock=(Stock)request.getAttribute("stock");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Stock</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-warning">

<h3>Update Stock</h3>

</div>

<div class="card-body">

<form action="updateStock" method="post">

<input type="hidden"
name="stockId"
value="<%=stock.getStockId()%>">

<input type="hidden"
name="productId"
value="<%=stock.getProductId()%>">

<div class="mb-3">

<label>Available Quantity</label>

<input type="number"
name="availableQuantity"
class="form-control"
value="<%=stock.getAvailableQuantity()%>">

</div>

<div class="mb-3">

<label>Last Updated</label>

<input type="date"
name="lastUpdated"
class="form-control"
value="<%=stock.getLastUpdated()%>">

</div>

<button class="btn btn-primary">

Update Stock

</button>

<a href="viewStock"
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