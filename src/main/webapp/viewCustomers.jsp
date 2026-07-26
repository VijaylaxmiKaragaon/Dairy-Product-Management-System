<%@ page import="java.util.*" %>
<%@ page import="com.dairyproduct.dto.Customer" %>

<%
List<Customer> customers =
(List<Customer>)request.getAttribute("customers");
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-5">

<h2>All Customers</h2>

<table class="table table-bordered">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Role</th>
<th>Status</th>
<th>Action</th>
</tr>

<%
for(Customer c : customers){
%>

<tr>

<td><%=c.getCustomerId()%></td>
<td><%=c.getName()%></td>
<td><%=c.getEmail()%></td>
<td><%=c.getRole()%></td>
<td><%=c.getStatus()%></td>

<td>

<a href="blockCustomer?id=<%=c.getCustomerId()%>"
class="btn btn-warning btn-sm">
Block </a>

<a href="deleteCustomer?id=<%=c.getCustomerId()%>"
class="btn btn-danger btn-sm">
Delete </a>

</td>

</tr>

<%
}
%>

</table>

</div>

</body>
</html>
