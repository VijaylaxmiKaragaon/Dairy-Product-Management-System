<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dairyproduct.dto.Product" %>
<%@ page import="com.dairyproduct.dto.Customer" %>


<%

Customer customer =
(Customer) session.getAttribute("customer");


if(customer == null){

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

<title>DairyMart | Products</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">


<style>


body{

    background:#f5f7fa;

    font-family:'Segoe UI',sans-serif;

}



.navbar{

    background:linear-gradient(135deg,#1565C0,#42A5F5);

    padding:15px;

}



.navbar-brand{

    font-size:25px;

    font-weight:bold;

}



.header{

    background:linear-gradient(135deg,#4CAF50,#66BB6A);

    color:white;

    text-align:center;

    padding:50px 20px;

}



.header h1{

    font-weight:bold;

}



.product-card{

    border:none;

    border-radius:20px;

    overflow:hidden;

    box-shadow:0 8px 20px rgba(0,0,0,.12);

    transition:.3s;

    height:100%;

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



.btn-cart{

    background:#28a745;

    color:white;

    font-weight:bold;

    border-radius:10px;

}



.btn-cart:hover{

    background:#218838;

    color:white;

}



.btn-view{

    background:#1565C0;

    color:white;

    font-weight:bold;

    border-radius:10px;

}



.btn-view:hover{

    background:#0D47A1;

    color:white;

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



<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">


<div class="container">


<a class="navbar-brand">

🥛 DairyMart

</a>



<div>


<a href="<%=request.getContextPath()%>/home.jsp"

class="btn btn-light btn-sm">

Home

</a>



<a href="<%=request.getContextPath()%>/viewCart"

class="btn btn-warning btn-sm">

Cart

</a>



<a href="<%=request.getContextPath()%>/viewOrders"

class="btn btn-success btn-sm">

Orders

</a>



<a href="<%=request.getContextPath()%>/logout"

class="btn btn-danger btn-sm">

Logout

</a>


</div>


</div>


</nav>






<!-- Header -->


<div class="header">


<h1>

🛒 Dairy Products

</h1>


<p>

Fresh & Healthy Dairy Products

</p>



<h5>

Welcome,
<%=customer.getName()%>

</h5>


</div>






<!-- Products -->


<div class="container mt-5">


<div class="row g-4">



<%


if(products != null && !products.isEmpty()){



for(Product p : products){


%>



<div class="col-md-4">


<div class="card product-card">



<img src="<%=p.getImage()%>"

class="product-img"

alt="Product Image">






<div class="card-body">



<h4>

<%=p.getProductName()%>

</h4>




<p class="text-muted">

Brand :

<%=p.getBrand()%>

</p>




<h5 class="price">

₹ <%=p.getPrice()%>

</h5>




<p>

Quantity :

<strong>

<%=p.getQuantity()%>

</strong>


</p>





<p>

<%=p.getDescription()%>

</p>






<div class="d-grid gap-2">





<!-- View Product -->

<a href="<%=request.getContextPath()%>/viewProduct?productId=<%=p.getProductId()%>"

class="btn btn-view">


👁 View Details


</a>






<!-- Add To Cart POST -->

<form action="<%=request.getContextPath()%>/addToCart"

method="post">



<input type="hidden"

name="productId"

value="<%=p.getProductId()%>">



<input type="hidden"

name="quantity"

value="1">





<button type="submit"

class="btn btn-cart w-100">


🛒 Add To Cart


</button>



</form>





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


No Products Available


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