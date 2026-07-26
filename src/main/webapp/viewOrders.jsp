<%@ page import="java.util.*" %>
<%@ page import="com.dairyproduct.dto.Orders" %>

<%
List<Orders> orders =
(List<Orders>)request.getAttribute("orders");
%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">

<title>All Orders</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">
All Orders
</h2>

<table class="table table-bordered table-striped">

<tr>

<th>Order ID</th>
<th>Customer ID</th>
<th>Order Date</th>
<th>Total Amount</th>
<th>Payment Method</th>
<th>Status</th>
<th>Delivery Address</th>
<th>Action</th>

</tr>

<%
for(Orders o : orders){
%>

<tr>

<td><%=o.getOrderId()%></td>

<td><%=o.getCustomerId()%></td>

<td><%=o.getOrderDate()%></td>

<td>₹ <%=o.getTotalAmount()%></td>

<td><%=o.getPaymentMethod()%></td>

<td><%=o.getOrderStatus()%></td>

<td><%=o.getDeliveryAddress()%></td>

<td>

<a href="updateOrderStatus.jsp?id=<%=o.getOrderId()%>"
class="btn btn-primary btn-sm">

Update Status

</a>

</td>

</tr>

<%
}
%>

</table>

</div>

</body>
</html>
