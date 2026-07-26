<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dairyproduct.dto.Product" %>
<%@ page import="com.dairyproduct.dto.Customer" %>

<%
Customer customer =
(Customer)session.getAttribute("customer");

if(customer == null ||
   !"ADMIN".equals(customer.getRole())){

    response.sendRedirect(
        request.getContextPath()+"/login.jsp"
    );

    return;
}

List<Product> products =
(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Admin Product Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    background:#f5f7fa;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.header{
    background:linear-gradient(135deg,#d32f2f,#ef5350);
    color:white;
    text-align:center;
    padding:50px;
}

.product-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 8px 20px rgba(0,0,0,.15);
    transition:.3s;
}

.product-card:hover{
    transform:translateY(-8px);
}

.product-img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.price{
    color:#28a745;
    font-size:24px;
    font-weight:bold;
}

.btn-update{
    background:#ffc107;
    color:black;
    font-weight:bold;
}

.btn-delete{
    background:#dc3545;
    color:white;
    font-weight:bold;
}

.footer{
    background:#1565C0;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a class="navbar-brand fw-bold">
🥛 DairyMart Admin
</a>

<div>

<a href="<%=request.getContextPath()%>/admin.jsp"
class="btn btn-light btn-sm">
Dashboard
</a>

<a href="<%=request.getContextPath()%>/addProduct.jsp"
class="btn btn-success btn-sm">
➕ Add Product
</a>

<a href="<%=request.getContextPath()%>/logout"
class="btn btn-danger btn-sm">
Logout
</a>

</div>

</div>

</nav>

<div class="header">

<h1>
⚙ Product Management
</h1>

<p>
Admin can add, update and delete products
</p>

</div>

<div class="container mt-5">

<div class="row g-4">

<%
if(products != null && !products.isEmpty()){

for(Product p : products){
%>

<div class="col-md-4">

<div class="card product-card">

<img src="<%=p.getImage()%>"
class="product-img">

<div class="card-body">

<h4>
<%=p.getProductName()%>
</h4>

<p>
Brand :
<strong><%=p.getBrand()%></strong>
</p>

<h5 class="price">
₹ <%=p.getPrice()%>
</h5>

<p>
Quantity :
<%=p.getQuantity()%>
</p>

<p>
<%=p.getDescription()%>
</p>

<div class="d-grid gap-2">

<a href="<%=request.getContextPath()%>/updateProduct?productId=<%=p.getProductId()%>"
class="btn btn-update">

✏ Update Product

</a>

<a href="<%=request.getContextPath()%>/deleteProduct?productId=<%=p.getProductId()%>"
class="btn btn-delete"
onclick="return confirm('Delete this product?')">

🗑 Delete Product

</a>

</div>

</div>

</div>

</div>

<%
}
}
else{
%>

<div class="col-12">

<div class="alert alert-danger text-center">

No Products Found

</div>

</div>

<%
}
%>

</div>

</div>

<div class="footer">

<h5>
© 2026 Dairy Product Management System
</h5>

</div>

</body>
</html>