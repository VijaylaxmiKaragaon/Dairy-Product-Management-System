<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dairyproduct.dto.CartItems" %>


<%

List<CartItems> cartItems =
(List<CartItems>)request.getAttribute("cartItems");


Double total =
(Double)request.getAttribute("total");


if(total == null){
    total = 0.0;
}

%>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Cart</title>


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



.cart-header{

    background:linear-gradient(135deg,#43A047,#66BB6A);

    color:white;

    padding:45px;

    text-align:center;

}



.cart-header h1{

    font-weight:bold;

}



.cart-card{

    border:none;

    border-radius:20px;

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



.btn-remove{

    border-radius:8px;

}



.btn-checkout{

    background:#28a745;

    color:white;

    font-weight:bold;

}



.btn-shop{

    background:#1565C0;

    color:white;

    font-weight:bold;

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


<a href="viewProducts"
class="btn btn-warning btn-sm">

Products

</a>


</div>


</div>


</nav>





<!-- Header -->


<div class="cart-header">


<h1>
🛒 My Shopping Cart
</h1>


<p>
Review your dairy products before checkout
</p>


</div>





<!-- Cart Table -->


<div class="container mt-5">


<div class="card cart-card">


<div class="card-body">


<table class="table table-hover">


<thead>


<tr>


<th>Product ID</th>

<th>Price</th>

<th>Quantity</th>

<th>Subtotal</th>

<th>Action</th>


</tr>


</thead>



<tbody>



<%

if(cartItems != null && !cartItems.isEmpty()){


    for(CartItems item : cartItems){

%>



<tr>


<td>

<%=item.getProductId()%>

</td>



<td>

₹ <%=item.getPrice()%>

</td>



<td>

<%=item.getQuantity()%>

</td>



<td>

₹ <%=item.getSubtotal()%>

</td>




<td>


<a href="removeCartItem?cartItemId=<%=item.getCartItemsId()%>"

class="btn btn-danger btn-sm"

onclick="return confirm('Remove this item?')">


🗑 Remove


</a>


</td>


</tr>




<%

    }

}

else{

%>



<tr>


<td colspan="5"

class="text-center text-danger fw-bold">


Cart is Empty


</td>


</tr>



<%

}

%>



</tbody>


</table>


</div>


</div>


</div>






<!-- Total Section -->


<div class="container mt-4">


<div class="card total-card">


<div class="card-body text-center">


<h3>


Grand Total :

<span class="text-success">


₹ <%=total%>


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