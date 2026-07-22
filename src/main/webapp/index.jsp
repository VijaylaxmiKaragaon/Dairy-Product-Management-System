<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dairy Product Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    min-height:100vh;
    background:
    linear-gradient(rgba(0,0,0,.45),rgba(0,0,0,.45)),
    url('https://images.unsplash.com/photo-1550583724-b2692b85b150');
    background-size:cover;
    background-position:center;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:rgba(255,255,255,.1);
    backdrop-filter:blur(10px);
}

.hero{
    min-height:90vh;
    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero-content{
    max-width:800px;
}

.hero h1{
    font-size:4rem;
    font-weight:700;
    margin-bottom:20px;
}

.hero p{
    font-size:1.3rem;
    margin-bottom:30px;
}

.btn-custom{
    padding:12px 35px;
    border-radius:30px;
    font-size:18px;
    font-weight:bold;
    margin:10px;
    transition:.3s;
}

.btn-login:hover,
.btn-register:hover{
    transform:translateY(-5px);
}

.feature-card{
    border:none;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
    transition:.3s;
}

.feature-card:hover{
    transform:translateY(-10px);
}

.features{
    background:white;
    padding:70px 0;
}

.footer{
    background:#1565C0;
    color:white;
    text-align:center;
    padding:15px;
}

</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <div class="container">

        <a class="navbar-brand fw-bold">
            🥛 DairyMart
        </a>

    </div>

</nav>

<!-- Hero Section -->

<div class="hero">

    <div class="hero-content">

        <h1>
            🥛 Dairy Product Management System
        </h1>

        <p>
            Fresh Milk, Butter, Cheese, Paneer, Curd and More
            Delivered To Your Doorstep.
        </p>

        <a href="login.jsp"
            class="btn btn-success btn-lg btn-custom btn-login">

            Login

        </a>

        <a href="register.jsp"
            class="btn btn-primary btn-lg btn-custom btn-register">

            Register

        </a>

    </div>

</div>

<!-- Features Section -->

<div class="features">

    <div class="container">

        <h2 class="text-center mb-5">
            Why Choose DairyMart?
        </h2>

        <div class="row g-4">

            <div class="col-md-4">

                <div class="card feature-card">

                    <div class="card-body text-center">

                        <h1>🥛</h1>

                        <h4>Fresh Products</h4>

                        <p>
                            Daily fresh dairy products directly
                            from trusted farms.
                        </p>

                    </div>

                </div>

            </div>

            <div class="col-md-4">

                <div class="card feature-card">

                    <div class="card-body text-center">

                        <h1>🚚</h1>

                        <h4>Fast Delivery</h4>

                        <p>
                            Quick and reliable delivery
                            to your doorstep.
                        </p>

                    </div>

                </div>

            </div>

            <div class="col-md-4">

                <div class="card feature-card">

                    <div class="card-body text-center">

                        <h1>💳</h1>

                        <h4>Secure Payment</h4>

                        <p>
                            Safe online transactions
                            with multiple payment options.
                        </p>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

<!-- Footer -->

<div class="footer">

    <h5>
        © 2026 Dairy Product Management System
    </h5>

</div>

</body>
</html>