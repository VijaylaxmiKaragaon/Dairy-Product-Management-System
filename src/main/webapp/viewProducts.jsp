<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dairyproduct.dto.Product" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>

<style>
table{
    border-collapse: collapse;
    width: 100%;
}
th,td{
    border:1px solid black;
    padding:10px;
    text-align:center;
}
a{
    text-decoration:none;
    padding:5px;
}
</style>

</head>
<body>

<h2>Product List</h2>

<a href="home.jsp">Home</a> |
<a href="cart.jsp">Cart</a> |
<a href="orders.jsp">Orders</a>

<br><br>

<table>

<tr>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Brand</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Manufacture Date</th>
    <th>Expiry Date</th>
    <th>Description</th>
    <th>Image</th>
    <th>Actions</th>
</tr>

<%
List<Product> products =
(List<Product>)request.getAttribute("products");

if(products != null){

    for(Product p : products){
%>

<tr>

<td><%= p.getProductId() %></td>

<td><%= p.getProductName() %></td>

<td><%= p.getBrand() %></td>

<td><%= p.getPrice() %></td>

<td><%= p.getQuantity() %></td>

<td><%= p.getManufactureDate() %></td>

<td><%= p.getExpiryDate() %></td>

<td><%= p.getDescription() %></td>

<td>
    <img src="<%= p.getImage() %>"
         width="80"
         height="80">
</td>

<td>

<a href="addToCart.jsp?id=<%= p.getProductId() %>">
Add To Cart
</a>

|

<a href="updateProduct.jsp?id=<%= p.getProductId() %>">
Update
</a>

|

<a href="deleteProduct?id=<%= p.getProductId() %>"
onclick="return confirm('Are you sure?')">
Delete
</a>

</td>

</tr>

<%
    }
}
else{
%>

<tr>
<td colspan="10">No Products Available</td>
</tr>

<%
}
%>

</table>

<br><br>

<a href="addProduct.jsp">Add New Product</a>

</body>
</html>