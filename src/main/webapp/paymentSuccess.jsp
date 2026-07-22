<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Successful</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	min-height:100vh;
	background:linear-gradient(135deg,#4CAF50,#81C784);
	display:flex;
	justify-content:center;
	align-items:center;
	font-family:'Segoe UI',sans-serif;
}

.success-card{
	background:white;
	border:none;
	border-radius:25px;
	padding:40px;
	text-align:center;
	box-shadow:0 15px 35px rgba(0,0,0,.2);
	max-width:650px;
	width:100%;
}

.success-icon{
	font-size:100px;
	margin-bottom:20px;
	animation:bounce 1.5s infinite;
}

@keyframes bounce{
	0%,20%,50%,80%,100%{
		transform:translateY(0);
	}
	40%{
		transform:translateY(-15px);
	}
	60%{
		transform:translateY(-8px);
	}
}

.success-title{
	color:#28a745;
	font-weight:bold;
	font-size:40px;
}

.order-msg{
	font-size:18px;
	color:#555;
	margin-top:15px;
}

.btn-home{
	background:#1565C0;
	color:white;
	padding:12px 25px;
	border-radius:12px;
	font-weight:bold;
	text-decoration:none;
}

.btn-home:hover{
	background:#0D47A1;
	color:white;
}

.btn-order{
	background:#28a745;
	color:white;
	padding:12px 25px;
	border-radius:12px;
	font-weight:bold;
	text-decoration:none;
}

.btn-order:hover{
	background:#218838;
	color:white;
}

.thankyou{
	margin-top:20px;
	font-size:17px;
	color:#666;
}

</style>

</head>
<body>

<div class="success-card">

	<div class="success-icon">
		🎉
	</div>

	<h1 class="success-title">
		Payment Successful
	</h1>

	<p class="order-msg">
		Your payment has been processed successfully.
	</p>

	<p class="thankyou">
		🥛 Thank you for choosing DairyMart.
		Your order has been placed successfully and
		will be delivered soon.
	</p>

	<hr>

	<div class="mt-4">

		<a href="home.jsp"
			class="btn-home">

			🏠 Go To Home

		</a>

		<a href="viewOrders"
			class="btn-order ms-2">

			📦 View Orders

		</a>

	</div>

</div>

</body>
</html>