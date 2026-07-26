<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.dairyproduct.dto.Customer" %>


<%

Customer customer =
(Customer)session.getAttribute("customer");


if(customer == null ||
!"ADMIN".equals(customer.getRole())){


response.sendRedirect("login.jsp");
return;

}

%>


<!DOCTYPE html>
<html>

<head>

<title>Add Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">


</head>


<body class="bg-light">


<div class="container mt-5">


<div class="card shadow">


<div class="card-header bg-success text-white">

<h3>Add New Product</h3>

</div>



<div class="card-body">



<form action="addProduct" method="post">



<div class="mb-3">

<label>Category ID</label>

<input type="number"
name="categoryId"
class="form-control"
required>

</div>




<div class="mb-3">

<label>Product Name</label>

<input type="text"
name="productName"
class="form-control"
required>

</div>




<div class="mb-3">

<label>Brand</label>

<input type="text"
name="brand"
class="form-control">

</div>




<div class="mb-3">

<label>Price</label>

<input type="number"
name="price"
class="form-control"
required>

</div>




<div class="mb-3">

<label>Quantity</label>

<input type="number"
name="quantity"
class="form-control"
required>

</div>




<div class="mb-3">

<label>Manufactured Date</label>

<input type="date"
name="manufacturedDate"
class="form-control">

</div>




<div class="mb-3">

<label>Expiry Date</label>

<input type="date"
name="expiryDate"
class="form-control">

</div>




<div class="mb-3">

<label>Description</label>

<textarea name="description"
class="form-control"></textarea>

</div>




<div class="mb-3">

<label>Image URL</label>

<input type="text"
name="image"
class="form-control">

</div>




<button class="btn btn-success">

Add Product

</button>


<a href="adminProducts"
class="btn btn-secondary">

Back

</a>


</form>



</div>

</div>

</div>


</body>

</html>