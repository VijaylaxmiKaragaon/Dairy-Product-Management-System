<%@page import="java.util.List"%>
<%@page import="com.dairyproduct.dto.Category"%>

<%
List<Category> categories =
(List<Category>)request.getAttribute("categories");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:linear-gradient(135deg,#1565C0,#42A5F5);
    min-height:100vh;
    padding:40px 0;
}

.card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 15px 35px rgba(0,0,0,.2);
}

.card-header{
    background:linear-gradient(135deg,#2E7D32,#66BB6A);
    text-align:center;
    padding:25px;
}

.card-header h2{
    color:white;
    font-weight:bold;
    margin:0;
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

.btn-save{
    background:#28a745;
    color:white;
    padding:12px 25px;
    border:none;
    border-radius:10px;
    font-weight:bold;
}

.btn-save:hover{
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

</style>

</head>
<body>

<div class="container">

    <div class="row justify-content-center">

        <div class="col-lg-8">

            <div class="card">

                <div class="card-header">

                    <div class="logo">🥛</div>

                    <h2>Add Dairy Product</h2>

                </div>

                <div class="card-body">

                    <form action="addProduct" method="post">

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Product Category
                            </label>

                            <select name="categoryId"
                                    class="form-select">

                                <%
                                if(categories!=null){
                                    for(Category c : categories){
                                %>

                                <option value="<%=c.getCategoryId()%>">

                                    <%=c.getCategoryName()%>

                                </option>

                                <%
                                    }
                                }
                                %>

                            </select>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Product Name
                            </label>

                            <input type="text"
                                   name="productName"
                                   class="form-control"
                                   placeholder="Enter Product Name"
                                   required>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Brand
                            </label>

                            <input type="text"
                                   name="brand"
                                   class="form-control"
                                   placeholder="Enter Brand Name">

                        </div>

                        <div class="row">

                            <div class="col-md-6 mb-3">

                                <label class="form-label fw-bold">
                                    Price
                                </label>

                                <input type="number"
                                       step="0.01"
                                       name="price"
                                       class="form-control"
                                       placeholder="₹ Enter Price">

                            </div>

                            <div class="col-md-6 mb-3">

                                <label class="form-label fw-bold">
                                    Quantity
                                </label>

                                <input type="number"
                                       name="quantity"
                                       class="form-control"
                                       placeholder="Enter Quantity">

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6 mb-3">

                                <label class="form-label fw-bold">
                                    Manufacture Date
                                </label>

                                <input type="date"
                                       name="manufactureDate"
                                       class="form-control">

                            </div>

                            <div class="col-md-6 mb-3">

                                <label class="form-label fw-bold">
                                    Expiry Date
                                </label>

                                <input type="date"
                                       name="expiryDate"
                                       class="form-control">

                            </div>

                        </div>

                        <div class="mb-3">

                            <label class="form-label fw-bold">
                                Description
                            </label>

                            <textarea
                                name="description"
                                rows="4"
                                class="form-control"
                                placeholder="Enter Product Description"></textarea>

                        </div>

                        <div class="mb-4">

                            <label class="form-label fw-bold">
                                Product Image URL
                            </label>

                            <input type="text"
                                   name="image"
                                   class="form-control"
                                   placeholder="Paste Image URL">

                        </div>

                        <div class="d-flex justify-content-between">

                            <button class="btn-save">

                                Save Product

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