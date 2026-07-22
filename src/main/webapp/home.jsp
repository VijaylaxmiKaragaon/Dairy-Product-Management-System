<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dairy Product Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background-color:#f5f7fa;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.hero{
    background:linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),
    url("https://images.unsplash.com/photo-1550583724-b2692b85b150");
    background-size:cover;
    background-position:center;
    color:white;
    padding:100px 20px;
    text-align:center;
}

.hero h1{
    font-size:3rem;
    font-weight:bold;
}

.hero p{
    font-size:1.2rem;
}

.card{
    border:none;
    border-radius:15px;
    transition:0.3s;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.card:hover{
    transform:translateY(-8px);
}

.card-body{
    text-align:center;
}

.footer{
    background:#1565C0;
    color:white;
    text-align:center;
    padding:15px;
    margin-top:50px;
}

</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">

        <a class="navbar-brand fw-bold" href="#">
            🥛 DairyMart
        </a>

        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#menu">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="menu">

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
                    <a class="nav-link text-warning"
                        href="login.jsp">
                        Logout
                    </a>
                </li>

            </ul>

        </div>

    </div>
</nav>

<!-- Hero Section -->

<div class="hero">

    <h1>Welcome to Dairy Product Management System</h1>

    <p>
        Fresh Milk, Butter, Cheese, Curd and More Delivered Daily
    </p>

    <a href="viewProducts"
        class="btn btn-warning btn-lg mt-3">

        Shop Now

    </a>

</div>

<!-- Features -->

<div class="container mt-5">

    <div class="row g-4">

        <div class="col-md-4">

            <div class="card">

                <div class="card-body">

                    <h2>🛒</h2>

                    <h4>View Products</h4>

                    <p>
                        Explore fresh dairy products.
                    </p>

                    <a href="viewProducts"
                        class="btn btn-primary">

                        Browse

                    </a>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card">

                <div class="card-body">

                    <h2>🛍️</h2>

                    <h4>My Cart</h4>

                    <p>
                        Check items added to your cart.
                    </p>

                    <a href="viewCart"
                        class="btn btn-success">

                        View Cart

                    </a>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card">

                <div class="card-body">

                    <h2>📦</h2>

                    <h4>My Orders</h4>

                    <p>
                        Track all your dairy orders.
                    </p>

                    <a href="viewOrders"
                        class="btn btn-info text-white">

                        View Orders

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

<!-- Dairy Categories -->

<div class="container mt-5">

    <h2 class="text-center mb-4">
        Popular Categories
    </h2>

    <div class="row text-center">

        <div class="col-md-2">
            <h1>🥛</h1>
            <h5>Milk</h5>
        </div>

        <div class="col-md-2">
            <h1>🧈</h1>
            <h5>Butter</h5>
        </div>

        <div class="col-md-2">
            <h1>🧀</h1>
            <h5>Cheese</h5>
        </div>

        <div class="col-md-2">
            <h1>🍦</h1>
            <h5>Ice Cream</h5>
        </div>

        <div class="col-md-2">
            <h1>🥣</h1>
            <h5>Curd</h5>
        </div>

        <div class="col-md-2">
            <h1>🥛</h1>
            <h5>Paneer</h5>
        </div>

    </div>

</div>

<!-- Footer -->

<div class="footer">

    <h5>
        © 2026 Dairy Product Management System
    </h5>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>