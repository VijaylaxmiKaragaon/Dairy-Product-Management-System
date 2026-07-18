<%@page import="java.util.List"%>
<%@page import="com.dairyproduct.dto.Category"%>

<%
List<Category> list =
(List<Category>)request.getAttribute("categories");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>View Categories</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center">

Category List

</h2>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Name</th>

<th>Description</th>

<th>Update</th>

<th>Delete</th>

</tr>

</thead>

<tbody>

<%

if(list!=null){

for(Category c:list){

%>

<tr>

<td><%=c.getCategoryId()%></td>

<td><%=c.getCategoryName()%></td>

<td><%=c.getDescription()%></td>

<td>

<a href="updateCategory.jsp?id=<%=c.getCategoryId()%>"

class="btn btn-warning">

Update

</a>

</td>

<td>

<a href="deleteCategory?categoryId=<%=c.getCategoryId()%>"

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

<a href="addCategory.jsp"

class="btn btn-success">

Add Category

</a>

</div>

</body>

</html>