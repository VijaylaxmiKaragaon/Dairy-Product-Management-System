<%@page import="com.dairyproduct.dto.Product"%>

<%
Product product=(Product)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f5f7fa;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.product-header{
    background:linear-gradient(135deg,#43A047,#66BB6A);
    color:white;
    text-align:center;
    padding:50px;
}

.product-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,.1);
}

.product-img{
    width:100%;
    height:400px;
    object-fit:cover;
}

.price{
    font-size:32px;
    color:#28a745;
    font-weight:bold;
}

.badge-stock{
    font-size:14px;
    padding:8px 15px;
}

.btn-cart{
    background:#28a745;
    color:white;
    font-weight:bold;
    border-radius:10px;
    padding:12px 25px;
}

.btn-cart:hover{
    background:#218838;
    color:white;
}

.btn-back{
    background:#6c757d;
    color:white;
    font-weight:bold;
    border-radius:10px;
    padding:12px 25px;
}

.btn-back:hover{
    background:#5a6268;
    color:white;
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

<div class="product-header">

    <h1>🥛 Product Details</h1>

    <p>
        Fresh Dairy Products
    </p>

</div>

<!-- Product Section -->

<div class="container mt-5">

    <div class="card product-card">

        <div class="row g-0">

            <!-- Product Image -->

            <div class="col-md-5">

                <img src="<%=product.getImage()%>"
                     class="product-img"
                     alt="Product Image">

            </div>

            <!-- Product Information -->

            <div class="col-md-7">

                <div class="card-body p-4">

                    <h2>
                        <%=product.getProductName()%>
                    </h2>

                    <h5 class="text-muted">
                        Brand :
                        <%=product.getBrand()%>
                    </h5>

                    <hr>

                    <p class="price">
                        ₹<%=product.getPrice()%>
                    </p>

                    <span class="badge bg-success badge-stock">
                        In Stock
                    </span>

                    <hr>

                    <h5>Description</h5>

                    <p>
                        <%=product.getDescription()%>
                    </p>

                    <h6>
                        Quantity Available :
                        <%=product.getQuantity()%>
                    </h6>

                    <h6>
                        Manufacture Date :
                        <%=product.getManufactureDate()%>
                    </h6>

                    <h6>
                        Expiry Date :
                        <%=product.getExpiryDate()%>
                    </h6>

                    <div class="mt-4">

                        <a href="addToCart?productId=<%=product.getProductId()%>"
                           class="btn btn-cart">

                            🛒 Add To Cart

                        </a>

                        <a href="viewProducts"
                           class="btn btn-back">

                            ⬅ Back

                        </a>

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