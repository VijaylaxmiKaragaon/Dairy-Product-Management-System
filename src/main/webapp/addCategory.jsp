<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Category</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">


<style>

*{
    font-family: 'Segoe UI', sans-serif;
}


body{

    min-height:100vh;

    background:
    linear-gradient(
        135deg,
        #e3f2fd,
        #bbdefb
    );

    display:flex;
    justify-content:center;
    align-items:center;

}


/* Main Card */

.category-card{

    width:450px;

    background:white;

    border-radius:18px;

    box-shadow:
    0 15px 40px rgba(0,0,0,0.15);

    overflow:hidden;

}



/* Header */

.card-header-custom{

    background:
    linear-gradient(
        135deg,
        #1565c0,
        #42a5f5
    );

    padding:30px;

    text-align:center;

    color:white;

}


.card-header-custom .icon{

    width:75px;

    height:75px;

    background:white;

    color:#1565c0;

    border-radius:50%;

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:35px;

    margin:auto;

    margin-bottom:15px;

}


.card-header-custom h2{

    font-size:26px;

    font-weight:700;

    margin:0;

}


.card-header-custom p{

    margin-top:8px;

    opacity:.9;

}



/* Body */

.card-body-custom{

    padding:35px;

}



.form-label{

    font-weight:600;

    color:#333;

}



.form-control{

    height:48px;

    border-radius:12px;

    border:1px solid #ddd;

    padding-left:15px;

}



textarea.form-control{

    height:auto;

}



.form-control:focus{

    border-color:#1976d2;

    box-shadow:
    0 0 0 0.2rem rgba(25,118,210,.15);

}




/* Buttons */


.btn-add{


    background:#1565c0;

    color:white;

    border:none;

    padding:12px 28px;

    border-radius:12px;

    font-weight:600;

    transition:.3s;

}



.btn-add:hover{

    background:#0d47a1;

    transform:translateY(-2px);

}



.btn-back{


    background:#f1f3f5;

    color:#333;

    padding:12px 28px;

    border-radius:12px;

    text-decoration:none;

    font-weight:600;

    transition:.3s;

}



.btn-back:hover{

    background:#ddd;

    color:#000;

}




</style>


</head>


<body>


<div class="category-card">


    <!-- Header -->

    <div class="card-header-custom">


        <div class="icon">

            <i class="fa-solid fa-cow"></i>

        </div>


        <h2>
            Add Category
        </h2>


        <p>
            Create a new dairy product category
        </p>


    </div>



    <!-- Form -->

    <div class="card-body-custom">


        <form action="addCategory" method="post">


            <div class="mb-4">


                <label class="form-label">

                    Category Name

                </label>


                <input type="text"

                       name="categoryName"

                       class="form-control"

                       placeholder="Example: Milk Products"

                       required>


            </div>



            <div class="mb-4">


                <label class="form-label">

                    Description

                </label>


                <textarea

                    name="description"

                    class="form-control"

                    rows="4"

                    placeholder="Enter category details">

                </textarea>


            </div>




            <div class="d-flex justify-content-between">


                <button type="submit"

                        class="btn-add">


                    <i class="fa-solid fa-plus"></i>

                    Add Category


                </button>



                <a href="home.jsp"

                   class="btn-back">


                    <i class="fa-solid fa-arrow-left"></i>

                    Back


                </a>


            </div>



        </form>


    </div>


</div>



</body>
</html>