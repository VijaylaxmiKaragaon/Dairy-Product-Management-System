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

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">


<style>


body{

    min-height:100vh;

    background:
    linear-gradient(
        135deg,
        #e8f5e9,
        #bbdefb
    );

    padding:40px 0;

    font-family:'Segoe UI',sans-serif;

}




.product-card{

    max-width:850px;

    margin:auto;

    background:white;

    border-radius:20px;

    overflow:hidden;

    box-shadow:
    0 15px 40px rgba(0,0,0,.15);

}





/* Header */


.product-header{

    background:
    linear-gradient(
        135deg,
        #1565c0,
        #43a047
    );

    color:white;

    text-align:center;

    padding:35px;

}



.product-icon{

    width:80px;

    height:80px;

    background:white;

    color:#1565c0;

    border-radius:50%;

    display:flex;

    align-items:center;

    justify-content:center;

    margin:auto;

    font-size:38px;

    margin-bottom:15px;

}



.product-header h2{

    font-weight:700;

    margin:0;

}



.product-header p{

    margin-top:8px;

    opacity:.9;

}





/* Body */


.product-body{

    padding:40px;

}




.form-label{

    font-weight:600;

    color:#333;

}



.form-control,
.form-select{


    height:48px;

    border-radius:12px;

    border:1px solid #ddd;

}



textarea.form-control{

    height:auto;

}



.form-control:focus,
.form-select:focus{


    border-color:#1565c0;

    box-shadow:
    0 0 0 .2rem rgba(21,101,192,.15);

}





/* Buttons */


.btn-save{

    background:#1565c0;

    color:white;

    border:none;

    padding:12px 30px;

    border-radius:12px;

    font-weight:600;

    transition:.3s;

}



.btn-save:hover{

    background:#0d47a1;

    transform:translateY(-2px);

}





.btn-back{

    background:#f1f3f5;

    color:#333;

    padding:12px 30px;

    border-radius:12px;

    text-decoration:none;

    font-weight:600;

}



.btn-back:hover{

    background:#ddd;

    color:#000;

}



.input-icon{

    color:#1565c0;

    margin-right:5px;

}


</style>


</head>


<body>



<div class="container">


<div class="product-card">



<!-- Header -->

<div class="product-header">


<div class="product-icon">

<i class="fa-solid fa-bottle-water"></i>

</div>


<h2>
Add Dairy Product
</h2>


<p>
Manage dairy inventory products
</p>


</div>




<!-- Form -->


<div class="product-body">


<form action="addProduct" method="post">



<div class="mb-4">


<label class="form-label">

<i class="fa-solid fa-layer-group input-icon"></i>

Product Category

</label>


<select name="categoryId"
        class="form-select"
        required>


<option value="">
Select Category
</option>


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






<div class="row">


<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-box input-icon"></i>

Product Name

</label>


<input type="text"
name="productName"
class="form-control"
placeholder="Enter product name"
required>


</div>




<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-tag input-icon"></i>

Brand

</label>


<input type="text"
name="brand"
class="form-control"
placeholder="Enter brand">


</div>


</div>






<div class="row">


<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-indian-rupee-sign input-icon"></i>

Price

</label>


<input type="number"
step="0.01"
name="price"
class="form-control"
placeholder="Enter price">


</div>




<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-cubes input-icon"></i>

Quantity

</label>


<input type="number"
name="quantity"
class="form-control"
placeholder="Enter quantity">


</div>


</div>






<div class="row">


<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-calendar input-icon"></i>

Manufactured Date

</label>


<input type="date"
name="manufactureDate"
class="form-control">


</div>




<div class="col-md-6 mb-4">


<label class="form-label">

<i class="fa-solid fa-calendar-xmark input-icon"></i>

Expiry Date

</label>


<input type="date"
name="expiryDate"
class="form-control">


</div>


</div>







<div class="mb-4">


<label class="form-label">

<i class="fa-solid fa-align-left input-icon"></i>

Description

</label>


<textarea name="description"
rows="4"
class="form-control"
placeholder="Enter product description"></textarea>


</div>






<div class="mb-4">


<label class="form-label">

<i class="fa-solid fa-image input-icon"></i>

Product Image

</label>


<input type="text"
name="image"
class="form-control"
placeholder="Enter image URL">


</div>







<div class="d-flex justify-content-between">


<button class="btn-save">

<i class="fa-solid fa-plus"></i>

Add Product

</button>



<a href="home.jsp"
class="btn-back">

<i class="fa-solid fa-arrow-left"></i>

Back Home

</a>



</div>




</form>


</div>


</div>


</div>


</body>
</html>