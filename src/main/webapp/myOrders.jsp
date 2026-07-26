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

<title>My Orders</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">
My Orders
</h2>

<table class="table table-bordered table-striped">

<tr>

<th>Order ID</th>
<th>Order Date</th>
<th>Total Amount</th>
<th>Payment Method</th>
<th>Status</th>
<th>Delivery Address</th>
<th>Details</th>
<th>Action</th>

</tr>

<%
if(orders != null){

for(Orders o : orders){
%>

<tr>

<td><%=o.getOrderId()%></td>

<td><%=o.getOrderDate()%></td>

<td>₹ <%=o.getTotalAmount()%></td>

<td><%=o.getPaymentMethod()%></td>

<td>

<%
if("Delivered".equalsIgnoreCase(o.getOrderStatus())){
%>

<span class="badge bg-success">
Delivered
</span>

<%
}
else if("Cancelled".equalsIgnoreCase(o.getOrderStatus())){
%>

<span class="badge bg-danger">
Cancelled
</span>

<%
}
else{
%>

<span class="badge bg-warning text-dark">
<%=o.getOrderStatus()%>
</span>

<%
}
%>

</td>

<td><%=o.getDeliveryAddress()%></td>

<td>

<td>
    <a href="orderDetails?orderId=<%=o.getOrderId()%>"
       class="btn btn-info btn-sm">
        View Details
    </a>
</td>

</td>

<td>

<%
if("Pending".equalsIgnoreCase(
o.getOrderStatus())){
%>

<a href="cancelOrder?orderId=<%=o.getOrderId()%>"
class="btn btn-danger btn-sm">

Cancel Order

</a>

<%
}
else{
%>

<span class="text-muted">
Not Allowed
</span>

<%
}
%>

</td>

</tr>

<%
}
}
else{
%>

<tr>
<td colspan="8" class="text-center">
No Orders Found
</td>
</tr>

<%
}
%>

</table>

</div>

</body>
</html>
