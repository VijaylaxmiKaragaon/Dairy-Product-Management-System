<%@ page import="java.util.List"%>
<%@ page import="com.dairyproduct.dto.Product"%>

<%
List<Product> products =
(List<Product>)request.getAttribute("products");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Stock</title>

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
    background:linear-gradient(135deg,#FF9800,#FFC107);
    text-align:center;
    padding:25px;
}

.card-header h2{
    color:white;
    margin:0;
    font-weight:bold;
}

.logo{
    font-size:50px;
    margin-bottom:10px;
}

.card-body{
    padding:35px;
}

.form-control,
.form-select{
    border-radius:12px;
    padding:12px;
}

.form-control:focus,
.form-select:focus{
    border-color:#42A5F5;
    box-shadow:0 0 10px rgba(66,165,245,.4);
}

.btn-stock{
    background:#28a745;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:10px;
    font-weight:bold;
}

.btn-stock:hover{
    background:#218838;
}

.btn-home{
    background:#6c757d;
    color:white;
    padding:12px 25px;
    border-radius:10px;
    text-decoration:none;
    font-weight:bold;
}

.btn-home:hover{
    color:white;
    background:#5a6268;
}

.stock-icon{
    text-align:center;
    margin-bottom:15px;
    font-size:60px;
}

</style>

</head>
<body>

<div class="container">

    <div class="row justify-content-center">

        <div class="col-md-7">

            <div class="card">

                <div class="card-header">

                    <div class="logo">📦</div>

                    <h2>Stock Management</h2>

                </div>

                <div class="card-body">

                    <div class="stock-icon">
                        🥛
                    </div>

                    <form action="addStock" method="post">

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Select Product
                            </label>

                            <select class="form-select"
                                    name="productId"
                                    required>

                                <option value="">
                                    -- Select Product --
                                </option>

                                <%
                                if(products != null){
                                    for(Product p : products){
                                %>

                                <option value="<%=p.getProductId()%>">

                                    <%=p.getProductName()%>

                                </option>

                                <%
                                    }
                                }
                                %>

                            </select>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Available Quantity
                            </label>

                            <input type="number"
                                   name="availableQuantity"
                                   class="form-control"
                                   placeholder="Enter Available Quantity"
                                   required>

                        </div>

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Last Updated
                            </label>

                            <input type="date"
                                   name="lastUpdated"
                                   class="form-control"
                                   required>

                        </div>

                        <div class="d-flex justify-content-between">

                            <button type="submit"
                                    class="btn-stock">

                                Add Stock

                            </button>

                            <a href="home.jsp"
                               class="btn-home">

                                Back Home

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