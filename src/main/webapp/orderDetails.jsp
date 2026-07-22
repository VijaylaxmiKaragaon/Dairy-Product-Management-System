<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.OrderDetails"%>

<%
List<OrderDetails> orderDetails =
(List<OrderDetails>)request.getAttribute("orderDetails");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>

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
    background:linear-gradient(135deg,#7B1FA2,#AB47BC);
    color:white;
    text-align:center;
    padding:50px;
}

.header h1{
    font-weight:bold;
}

.card{
    border:none;
    border-radius:20px;
    box-shadow:0 8px 20px rgba(0,0,0,.1);
}

.table th{
    background:#1565C0;
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

<div class="header">

    <h1>📦 Order Details</h1>

    <p>
        View all products included in this order
    </p>

</div>

<!-- Order Details Table -->

<div class="container mt-5">

    <div class="card">

        <div class="card-body">

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th>Product ID</th>
                        <th>Order ID</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Total Price</th>

                    </tr>

                </thead>

                <tbody>

                <%
                if(orderDetails != null){
                    for(OrderDetails od : orderDetails){
                %>

                    <tr>

                        <td><%=od.getProductId()%></td>

                        <td><%=od.getOrderId()%></td>

                        <td><%=od.getQuantity()%></td>

                        <td>₹<%=od.getPrice()%></td>

                        <td>
                            ₹<%=od.getQuantity() * od.getPrice()%>
                        </td>

                    </tr>

                <%
                    }
                }
                %>

                </tbody>

            </table>

        </div>

    </div>

    <div class="text-center mt-4">

        <a href="viewOrders"
           class="btn btn-primary">

            Back To Orders

        </a>

        <a href="home.jsp"
           class="btn btn-secondary">

            Home

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