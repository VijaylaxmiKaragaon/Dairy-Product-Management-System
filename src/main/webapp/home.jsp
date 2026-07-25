<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

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





/* Navbar */


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

    margin-left:25px;

}


.nav-link:hover{

    color:#d4a017!important;

}






/* Hero */


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








/* Feature */


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


.card-box h4{

    margin-top:20px;

    color:#1b263b;

}







/* Products */


.product-section{

    background:#1b263b;

    padding:70px 0;

}



.product-section .title{

    color:white;

}



.product{

    background:white;

    padding:25px;

    border-radius:20px;

    text-align:center;

}



.product i{

    font-size:45px;

    color:#d4a017;

}





/* About */


.about{

    padding:70px;

    text-align:center;

}



.about h2{

    color:#1b263b;

    font-weight:800;

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





<!-- Navbar -->


<nav class="navbar navbar-expand-lg">


<div class="container">


<a class="navbar-brand logo">

🥛 Dairy<span>Pro</span>

</a>



<ul class="navbar-nav ms-auto">


<li class="nav-item">

<a class="nav-link" href="home.jsp">

Home

</a>

</li>


<li class="nav-item">

<a class="nav-link" href="viewProducts">

Products

</a>

</li>


<li class="nav-item">

<a class="nav-link" href="viewCart">

Cart

</a>

</li>


<li class="nav-item">

<a class="nav-link" href="viewOrders">

Orders

</a>

</li>


<li class="nav-item">

<a class="nav-link text-danger" href="login.jsp">

Logout

</a>

</li>


</ul>


</div>


</nav>







<!-- Hero -->


<section class="hero">


<div class="container">


<div class="row align-items-center">



<div class="col-md-6 hero-content">


<h1>

Fresh Dairy

<br>

<span>Smart Management</span>

</h1>



<p>

A complete digital platform to manage
dairy products, customers, inventory,
cart, orders and payments.

</p>



<a href="viewProducts"

class="btn btn-main">

Explore Products

</a>



</div>





<div class="col-md-6">


<div class="hero-box">


<img src="images/dairy.jpg">


</div>


</div>



</div>


</div>


</section>









<!-- Features -->


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









<!-- Products -->


<section class="product-section">


<div class="container">


<h2 class="title">

Popular Dairy Products

</h2>




<div class="row g-4">


<div class="col-md-3">

<div class="product">

<i class="fa-solid fa-bottle-water"></i>

<h5>Milk</h5>

</div>

</div>


<div class="col-md-3">

<div class="product">

<i class="fa-solid fa-cheese"></i>

<h5>Cheese</h5>

</div>

</div>



<div class="col-md-3">

<div class="product">

<i class="fa-solid fa-ice-cream"></i>

<h5>Ice Cream</h5>

</div>

</div>



<div class="col-md-3">

<div class="product">

<i class="fa-solid fa-bowl-food"></i>

<h5>Curd</h5>

</div>

</div>


</div>


</div>


</section>









<section class="about">


<h2>

From Farm To Customer

</h2>


<p>

DairyPro simplifies dairy business operations
with efficient product, customer and order management.

</p>


</section>






<footer>

© 2026 Dairy Product Management System

</footer>



</body>


</html>