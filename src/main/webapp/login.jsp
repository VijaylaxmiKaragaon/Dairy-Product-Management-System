<%@ page language="java"
contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
    min-height:100vh;
    background:
    linear-gradient(rgba(0,0,0,.4),rgba(0,0,0,.4)),
    url('https://images.unsplash.com/photo-1550583724-b2692b85b150');
    background-size:cover;
    background-position:center;
    display:flex;
    justify-content:center;
    align-items:center;
    font-family:'Segoe UI',sans-serif;
}

.login-card{
    border:none;
    border-radius:25px;
    overflow:hidden;
    backdrop-filter:blur(15px);
    background:rgba(255,255,255,.95);
    box-shadow:0 10px 30px rgba(0,0,0,.25);
}

.card-header{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
    text-align:center;
    padding:25px;
}

.card-header h2{
    color:white;
    margin:0;
    font-weight:bold;
}

.logo{
    font-size:60px;
    text-align:center;
    margin-bottom:10px;
}

.card-body{
    padding:35px;
}

.form-control{
    border-radius:12px;
    padding:12px;
}

.form-control:focus{
    border-color:#42A5F5;
    box-shadow:0 0 10px rgba(66,165,245,.4);
}

.btn-login{
    background:#28a745;
    color:white;
    border:none;
    padding:12px;
    border-radius:12px;
    font-weight:bold;
    font-size:18px;
}

.btn-login:hover{
    background:#218838;
}

.register-link{
    text-decoration:none;
    font-weight:bold;
    color:#1565C0;
}

.register-link:hover{
    color:#0D47A1;
}

</style>

</head>

<body>

<div class="container">

    <div class="row justify-content-center">

        <div class="col-md-5">

            <div class="card login-card">

                <div class="card-header">

                    <div class="logo">🥛</div>

                    <h2>DairyMart Login</h2>

                </div>

                <div class="card-body">

                    <form action="login" method="post">

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Email Address
                            </label>

                            <input type="email"
                                   class="form-control"
                                   name="email"
                                   placeholder="Enter your email"
                                   required>

                        </div>

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Password
                            </label>

                            <input type="password"
                                   class="form-control"
                                   name="password"
                                   placeholder="Enter your password"
                                   required>

                        </div>

                        <button class="btn btn-login w-100">

                            Login

                        </button>

                    </form>

                    <hr>

                    <div class="text-center">

                        <p>

                            New User?

                            <a href="register.jsp"
                               class="register-link">

                                Register Here

                            </a>

                        </p>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

</body>

</html>