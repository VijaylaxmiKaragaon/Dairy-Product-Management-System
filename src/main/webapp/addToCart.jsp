<%@page import="com.dairyproduct.dto.Product"%>

<%
Product product = (Product)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add To Cart</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

.card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 15px 35px rgba(0,0,0,.2);
}

.card-header{
    background:linear-gradient(135deg,#43A047,#66BB6A);
    text-align:center;
    padding:25px;
}

.card-header h2{
    color:white;
    margin:0;
    font-weight:bold;
}

.card-body{
    padding:35px;
}

.product-icon{
    text-align:center;
    font-size:70px;
    margin-bottom:15px;
}

.form-control{
    border-radius:12px;
    padding:12px;
}

.form-control:focus{
    border-color:#42A5F5;
    box-shadow:0 0 10px rgba(66,165,245,.4);
}

.product-info{
    background:#f8f9fa;
    border-radius:15px;
    padding:15px;
    margin-bottom:20px;
}

.btn-cart{
    background:#28a745;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:10px;
    font-weight:bold;
}

.btn-cart:hover{
    background:#218838;
}

.btn-back{
    background:#6c757d;
    color:white;
    padding:12px 25px;
    border-radius:10px;
    text-decoration:none;
    font-weight:bold;
}

.btn-back:hover{
    background:#5a6268;
    color:white;
}

.price-tag{
    color:#28a745;
    font-size:24px;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

    <div class="row justify-content-center">

        <div class="col-md-6">

            <div class="card">

                <div class="card-header">

                    <h2>🛒 Add Product To Cart</h2>

                </div>

                <div class="card-body">

                    <div class="product-icon">
                        🥛
                    </div>

                    <div class="product-info">

                        <h4 class="text-center">
                            <%=product.getProductName()%>
                        </h4>

                        <p class="text-center price-tag">
                            ₹<%=product.getPrice()%>
                        </p>

                    </div>

                    <form action="addToCart" method="post">

                        <input type="hidden"
                               name="productId"
                               value="<%=product.getProductId()%>">

                        <input type="hidden"
                               name="price"
                               value="<%=product.getPrice()%>">

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Product Name
                            </label>

                            <input type="text"
                                   class="form-control"
                                   value="<%=product.getProductName()%>"
                                   readonly>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Price
                            </label>

                            <input type="text"
                                   class="form-control"
                                   value="₹<%=product.getPrice()%>"
                                   readonly>

                        </div>

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Quantity
                            </label>

                            <input type="number"
                                   name="quantity"
                                   class="form-control"
                                   value="1"
                                   min="1"
                                   required>

                        </div>

                        <div class="d-flex justify-content-between">

                            <button type="submit"
                                    class="btn-cart">

                                Add To Cart

                            </button>

                            <a href="viewProducts"
                               class="btn-back">

                                Continue Shopping

                            </a>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>