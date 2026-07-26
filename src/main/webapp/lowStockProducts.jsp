<%@ page import="java.util.*" %>
<%@ page import="com.dairyproduct.dto.Product" %>

<%
List<Product> products =
(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>

<html>
<head>
<title>Low Stock Products</title>
</head>

<body>

<h2>Low Stock Products</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Product</th>
<th>Brand</th>
<th>Quantity</th>
</tr>

<%
for(Product p : products){
%>

<tr>
<td><%=p.getProductId()%></td>
<td><%=p.getProductName()%></td>
<td><%=p.getBrand()%></td>
<td style="color:red">
<%=p.getQuantity()%>
</td>
</tr>

<%
}
%>

</table>

</body>
</html>
