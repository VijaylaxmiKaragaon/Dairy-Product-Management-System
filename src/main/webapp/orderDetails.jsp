<%@ page import="java.util.*" %>
<%@ page import="com.dairyproduct.dto.OrderDetails" %>

<%
List<OrderDetails> details =
(List<OrderDetails>)request.getAttribute("details");

Integer orderId =
(Integer)request.getAttribute("orderId");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Order Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center">
Order Details
</h2>

<h5 class="text-center mb-4">
Order ID : <%= orderId %>
</h5>

<table class="table table-bordered">

<tr>

<th>Product ID</th>
<th>Quantity</th>
<th>Price</th>
<th>Subtotal</th>

</tr>

<%
double total = 0;

if(details != null){

for(OrderDetails od : details){

total += od.getSubtotal();
%>

<tr>

<td><%=od.getProductId()%></td>

<td><%=od.getQuantity()%></td>

<td>₹ <%=od.getPrice()%></td>

<td>₹ <%=od.getSubtotal()%></td>

</tr>

<%
}
}
%>

<tr>

<td colspan="3">
<b>Total Amount</b>
</td>

<td>
<b>₹ <%= total %></b>
</td>

</tr>

</table>

<a href="myOrders"
class="btn btn-secondary">

Back

</a>

</div>

</body>

</html>
