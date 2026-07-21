<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>
</head>
<body>

<h2>Checkout</h2>

<form action="placeOrder.jsp" method="post">

    <label>Customer Name:</label>
    <input type="text" name="customerName" required>
    <br><br>

    <label>Address:</label>
    <textarea name="address" required></textarea>
    <br><br>

    <label>Phone Number:</label>
    <input type="text" name="phoneNumber" required>
    <br><br>

    <button type="submit">Place Order</button>

</form>

<br>

<a href="cart.jsp">Back to Cart</a>

</body>
</html>