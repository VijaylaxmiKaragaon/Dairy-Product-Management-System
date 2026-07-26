<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

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


// Prevent admin from accessing customer home page

if("ADMIN".equals(customer.getRole())){

    response.sendRedirect(
        request.getContextPath()+"/adminDashboard.jsp"
    );

    return;
}

%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>DairyPro | Management System</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">


<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
rel="stylesheet">



<style>


*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins','Segoe UI',sans-serif;
}


body{

    background:#f7f5f0;

}



.navbar{

    background:#ffffff;
    padding:20px 0;
    box-shadow:0 5px 20px rgba(0,0,0,.08);

}



.logo{

    font-size:28px;
    font-weight:800;
    color:#1b263b;

}



.logo span{

    color:#d4a017;

}



.nav-link{

    color:#1b263b!important;
    font-weight:600;
    margin-left:20px;

}



.nav-link:hover{

    color:#d4a017!important;

}



.hero{

    padding:80px 0;

}



.hero-content h1{

    font-size:55px;
    font-weight:800;
    color:#1b263b;

}



.hero-content h1 span{

    color:#d4a017;

}



.hero-content p{

    color:#666;
    font-size:18px;
    margin-top:20px;
    line-height:1.8;

}



.btn-main{

    background:#1b263b;
    color:white;
    padding:14px 35px;
    border-radius:30px;
    margin-top:20px;

}



.btn-main:hover{

    background:#d4a017;
    color:white;

}



.hero-box{

    background:white;
    padding:20px;
    border-radius:35px;
    box-shadow:0 20px 50px rgba(0,0,0,.15);

}



.hero-box img{

    width:100%;
    height:420px;
    object-fit:cover;
    border-radius:30px;

}



.features{

    padding:60px 0;

}



.title{

    text-align:center;
    font-size:38px;
    font-weight:800;
    color:#1b263b;
    margin-bottom:40px;

}



.card-box{

    background:white;
    padding:35px;
    border-radius:25px;
    text-align:center;
    box-shadow:0 10px 30px rgba(0,0,0,.08);
    transition:.3s;

}



.card-box:hover{

    transform:translateY(-10px);

}



.card-box i{

    font-size:45px;
    color:#d4a017;

}



footer{

    background:#101820;
    color:white;
    padding:20px;
    text-align:center;

}


</style>


</head>



<body>



<nav class="navbar navbar-expand-lg">


<div class="container">


<a class="navbar-brand logo">

🥛 Dairy<span>Pro</span>

</a>



<ul class="navbar-nav ms-auto">


<li class="nav-item">

<a class="nav-link"
href="<%=request.getContextPath()%>/home.jsp">

Home

</a>

</li>



<li class="nav-item">

<a class="nav-link"
href="<%=request.getContextPath()%>/viewProducts">

Products

</a>

</li>



<li class="nav-item">

<a class="nav-link"
href="<%=request.getContextPath()%>/viewCart">

Cart

</a>

</li>



<li class="nav-item">

<a class="nav-link"
href="<%=request.getContextPath()%>/myOrders">

My Orders

</a>

</li>



<li class="nav-item">

<a class="nav-link text-success">

Welcome,
<%=customer.getName()%>

</a>

</li>



<li class="nav-item">

<a class="nav-link text-danger"
href="<%=request.getContextPath()%>/logout">

Logout

</a>

</li>


</ul>


</div>


</nav>





<section class="hero">


<div class="container">


<div class="row align-items-center">


<div class="col-md-6 hero-content">


<h3 class="mb-3">

Welcome,
<%=customer.getName()%> 👋

</h3>



<h1>

Fresh Dairy

<br>

<span>
Smart Management
</span>

</h1>



<p>

A complete digital platform to manage dairy products,
customers, inventory, cart, orders and payments.

</p>



<a href="<%=request.getContextPath()%>/viewProducts"
class="btn btn-main">

Explore Products

</a>


</div>





<div class="col-md-6">


<div class="hero-box">


<img src="images/dairy.jpg"
alt="Dairy Products">


</div>


</div>



</div>


</div>


</section>





<section class="features">


<div class="container">


<h2 class="title">

Powerful Features

</h2>



<div class="row g-4">



<div class="col-md-4">

<div class="card-box">

<i class="fa-solid fa-cow"></i>

<h4>
Product Control
</h4>

<p>
Manage dairy products and categories.
</p>

</div>

</div>





<div class="col-md-4">

<div class="card-box">

<i class="fa-solid fa-cart-shopping"></i>

<h4>
Easy Shopping
</h4>

<p>
Customers can add products to cart.
</p>

</div>

</div>





<div class="col-md-4">

<div class="card-box">

<i class="fa-solid fa-credit-card"></i>

<h4>
Secure Payment
</h4>

<p>
Manage orders and payments.
</p>

</div>

</div>



</div>


</div>


</section>





<footer>

© 2026 Dairy Product Management System

</footer>



</body>

</html>