<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f5f7fa;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.cart-header{
    background:linear-gradient(135deg,#43A047,#66BB6A);
    color:white;
    padding:40px;
    text-align:center;
}

.cart-header h1{
    font-weight:bold;
}

.cart-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 8px 20px rgba(0,0,0,.1);
}

.table th{
    background:#1565C0;
    color:white;
}

.total-card{
    border:none;
    border-radius:20px;
    box-shadow:0 8px 20px rgba(0,0,0,.1);
}

.btn-checkout{
    background:#28a745;
    color:white;
    font-weight:bold;
    border-radius:10px;
}

.btn-shop{
    background:#1565C0;
    color:white;
    font-weight:bold;
    border-radius:10px;
}

.btn-remove{
    border-radius:8px;
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

        <a class="navbar-brand fw-bold">
            🥛 DairyMart
        </a>

        <div>

            <a href="home.jsp"
               class="btn btn-light btn-sm">

                Home

            </a>

        </div>

    </div>

</nav>

<!-- Header -->

<div class="cart-header">

    <h1>🛒 My Shopping Cart</h1>

    <p>
        Review your dairy products before checkout
    </p>

</div>

<!-- Cart Section -->

<div class="container mt-5">

    <div class="card cart-card">

        <div class="card-body">

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th>🥛 Product</th>
                        <th>💰 Price</th>
                        <th>📦 Quantity</th>
                        <th>₹ Total</th>
                        <th>⚙ Action</th>

                    </tr>

                </thead>

                <tbody>

                    <!-- Dynamic Cart Items -->

                    <tr>

                        <td>Fresh Milk</td>
                        <td>₹50</td>
                        <td>2</td>
                        <td>₹100</td>

                        <td>

                            <button class="btn btn-danger btn-sm btn-remove">

                                Remove

                            </button>

                        </td>

                    </tr>

                    <tr>

                        <td>Butter</td>
                        <td>₹60</td>
                        <td>1</td>
                        <td>₹60</td>

                        <td>

                            <button class="btn btn-danger btn-sm btn-remove">

                                Remove

                            </button>

                        </td>

                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</div>

<!-- Order Summary -->

<div class="container mt-4">

    <div class="card total-card">

        <div class="card-body text-center">

            <h3>

                Grand Total :
                <span class="text-success">

                    ₹160

                </span>

            </h3>

            <div class="mt-4">

                <a href="checkout.jsp"
                   class="btn btn-checkout btn-lg">

                    Proceed To Checkout

                </a>

                <a href="viewProducts"
                   class="btn btn-shop btn-lg ms-3">

                    Continue Shopping

                </a>

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