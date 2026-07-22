<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f5f7fa;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.checkout-header{
    background:linear-gradient(135deg,#FF9800,#FFC107);
    color:white;
    text-align:center;
    padding:50px;
}

.checkout-header h1{
    font-weight:bold;
}

.checkout-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.form-control{
    border-radius:10px;
    padding:12px;
}

.form-control:focus{
    border-color:#42A5F5;
    box-shadow:0 0 10px rgba(66,165,245,.4);
}

.btn-order{
    background:#28a745;
    color:white;
    border-radius:10px;
    padding:12px 25px;
    font-weight:bold;
}

.btn-order:hover{
    background:#218838;
    color:white;
}

.btn-cart{
    background:#6c757d;
    color:white;
    border-radius:10px;
    padding:12px 25px;
    text-decoration:none;
    font-weight:bold;
}

.btn-cart:hover{
    background:#5a6268;
    color:white;
}

.summary-card{
    border:none;
    border-radius:20px;
    box-shadow:0 8px 20px rgba(0,0,0,.1);
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

    </div>

</nav>

<!-- Header -->

<div class="checkout-header">

    <h1>📦 Checkout</h1>

    <p>
        Complete your delivery information
    </p>

</div>

<!-- Checkout Form -->

<div class="container mt-5">

    <div class="row">

        <!-- Customer Details -->

        <div class="col-md-8">

            <div class="card checkout-card">

                <div class="card-body p-4">

                    <h3 class="mb-4">
                        🚚 Delivery Details
                    </h3>

                    <form action="placeOrder" method="post">

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Customer Name
                            </label>

                            <input type="text"
                                   name="customerName"
                                   class="form-control"
                                   placeholder="Enter Your Name"
                                   required>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Delivery Address
                            </label>

                            <textarea
                                name="address"
                                rows="4"
                                class="form-control"
                                placeholder="Enter Delivery Address"
                                required></textarea>

                        </div>

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Phone Number
                            </label>

                            <input type="text"
                                   name="phoneNumber"
                                   class="form-control"
                                   placeholder="Enter Phone Number"
                                   required>

                        </div>

                        <button class="btn btn-order">

                            Place Order

                        </button>

                        <a href="cart.jsp"
                           class="btn btn-cart ms-2">

                            Back To Cart

                        </a>

                    </form>

                </div>

            </div>

        </div>

        <!-- Order Summary -->

        <div class="col-md-4">

            <div class="card summary-card">

                <div class="card-body">

                    <h4 class="text-center mb-4">
                        🛒 Order Summary
                    </h4>

                    <hr>

                    <p>
                        Fresh Milk × 2
                        <span class="float-end">
                            ₹100
                        </span>
                    </p>

                    <p>
                        Butter × 1
                        <span class="float-end">
                            ₹60
                        </span>
                    </p>

                    <hr>

                    <h5>

                        Total Amount

                        <span class="float-end text-success">

                            ₹160

                        </span>

                    </h5>

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