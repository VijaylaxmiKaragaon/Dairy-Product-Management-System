<%@ page import="java.util.*" %>
<%@ page import="com.dairyproduct.dto.Product" %>

<%
List<Product> products =
(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">

<title>Search Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2>Search Products</h2>

<form action="searchProduct"
method="get">

<input type="text"
name="keyword"
class="form-control"
placeholder="Enter Product Name or Brand">

<br>

<button class="btn btn-primary">
Search
</button>

</form>

<br>

<%
if(products != null){
%>

<table class="table table-bordered">

<tr>

<th>ID</th>
<th>Name</th>
<th>Brand</th>
<th>Price</th>
<th>Quantity</th>

</tr>

<%
for(Product p : products){
%>

<tr>

<td><%=p.getProductId()%></td>

<td><%=p.getProductName()%></td>

<td><%=p.getBrand()%></td>

<td>₹ <%=p.getPrice()%></td>

<td><%=p.getQuantity()%></td>

</tr>

<%
}
%>

</table>

<%
}
%>

</div>

</body>
</html>
