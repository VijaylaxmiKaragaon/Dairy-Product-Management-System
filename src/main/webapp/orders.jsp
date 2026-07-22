<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.Orders"%>

<%
List<Orders> orders =
(List<Orders>)request.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>

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
    background:linear-gradient(135deg,#FF5722,#FF9800);
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

.badge-status{
    font-size:14px;
    padding:8px 12px;
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

    <h1>📦 My Orders</h1>

    <p>
        Track and manage your dairy product orders
    </p>

</div>

<!-- Orders Table -->

<div class="container mt-5">

    <div class="card">

        <div class="card-body">

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th>Order ID</th>
                        <th>Customer ID</th>
                        <th>Order Date</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                <%
                if(orders != null){
                    for(Orders o : orders){
                %>

                    <tr>

                        <td>
                            <%=o.getOrderId()%>
                        </td>

                        <td>
                            <%=o.getCustomerId()%>
                        </td>

                        <td>
                            <%=o.getOrderDate()%>
                        </td>

                        <td>
                            ₹<%=o.getTotalAmount()%>
                        </td>

                        <td>

                            <span class="badge bg-success badge-status">

                                <%=o.getOrderStatus()%>

                            </span>

                        </td>

                        <td>

                            <a href="viewOrderDetails?orderId=<%=o.getOrderId()%>"
                               class="btn btn-info btn-sm text-white">

                                View Details

                            </a>

                            <a href="cancelOrder?orderId=<%=o.getOrderId()%>"
                               class="btn btn-danger btn-sm">

                                Cancel

                            </a>

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

        <a href="home.jsp"
           class="btn btn-primary">

            Home

        </a>

        <a href="viewProducts"
           class="btn btn-success">

            Continue Shopping

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