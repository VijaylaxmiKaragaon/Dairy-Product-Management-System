<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dairyproduct.dto.Product" %>

<%
List<Product> products =
(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f5f7fa;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
}

.header{
    background:linear-gradient(135deg,#4CAF50,#66BB6A);
    color:white;
    text-align:center;
    padding:50px;
}

.header h1{
    font-weight:bold;
}

.product-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 8px 20px rgba(0,0,0,.1);
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
}

.btn-cart:hover{
    background:#218838;
    color:white;
}

.btn-update{
    background:#FFC107;
    color:black;
    font-weight:bold;
}

.btn-update:hover{
    background:#FFB300;
}

.btn-delete{
    background:#dc3545;
    color:white;
    font-weight:bold;
}

.btn-delete:hover{
    background:#c82333;
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

        <div>

            <a href="home.jsp" class="btn btn-light btn-sm">
                Home
            </a>

            <a href="cart.jsp" class="btn btn-warning btn-sm">
                Cart
            </a>

            <a href="viewOrders" class="btn btn-success btn-sm">
                Orders
            </a>

        </div>

    </div>

</nav>

<!-- Header -->

<div class="header">

    <h1>🛒 Dairy Products</h1>

    <p>
        Fresh & Healthy Dairy Products
    </p>

</div>

<!-- Product Cards -->

<div class="container mt-5">

    <div class="row">

    <%
    if(products != null && !products.isEmpty()){

        for(Product p : products){
    %>

        <div class="col-md-4 mb-4">

            <div class="card product-card">

                <img src="<%=p.getImage()%>"
                     class="product-img"
                     alt="Product Image">

                <div class="card-body">

                    <h4>
                        <%=p.getProductName()%>
                    </h4>

                    <p class="text-muted">
                        Brand : <%=p.getBrand()%>
                    </p>

                    <h5 class="price">
                        ₹<%=p.getPrice()%>
                    </h5>

                    <p>
                        Quantity :
                        <strong><%=p.getQuantity()%></strong>
                    </p>

                    <p>
                        <%=p.getDescription()%>
                    </p>

                    <div class="d-grid gap-2">

                        <a href="viewProduct?productId=<%=p.getProductId()%>"
                           class="btn btn-primary">

                            👁 View Details

                        </a>

                        <a href="addToCart?productId=<%=p.getProductId()%>"
                           class="btn btn-cart">

                            🛒 Add To Cart

                        </a>

                        <a href="updateProduct?productId=<%=p.getProductId()%>"
                           class="btn btn-update">

                            ✏ Update

                        </a>

                        <a href="deleteProduct?productId=<%=p.getProductId()%>"
                           class="btn btn-delete"
                           onclick="return confirm('Are you sure you want to delete this product?')">

                            🗑 Delete

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

                No Products Available

            </div>

        </div>

    <%
    }
    %>

    </div>

    <div class="text-center mt-4">

        <a href="addProduct"
           class="btn btn-success btn-lg">

            ➕ Add New Product

        </a>

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