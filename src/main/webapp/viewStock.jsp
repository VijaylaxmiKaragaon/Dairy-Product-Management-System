<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.Stock"%>

<%
List<Stock> stocks=(List<Stock>)request.getAttribute("stocks");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>View Stock</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center">

Stock Details

</h2>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>Stock ID</th>

<th>Product ID</th>

<th>Available Quantity</th>

<th>Last Updated</th>

<th>Edit</th>

<th>Delete</th>

</tr>

</thead>

<tbody>

<%

if(stocks!=null){

for(Stock s:stocks){

%>

<tr>

<td><%=s.getStockId()%></td>

<td><%=s.getProductId()%></td>

<td><%=s.getAvailableQuantity()%></td>

<td><%=s.getLastUpdated()%></td>

<td>

<a href="updateStock.jsp?stockId=<%=s.getStockId()%>"
class="btn btn-warning">

Update

</a>

</td>

<td>

<a href="deleteStock?stockId=<%=s.getStockId()%>"
class="btn btn-danger">

Delete

</a>

</td>

</tr>

<%

}

}

%>

</tbody>

</table>

<a href="addStock.jsp"
class="btn btn-success">

Add New Stock

</a>

</div>

</body>

</html>