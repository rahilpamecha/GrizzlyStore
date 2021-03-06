<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/main.css">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
        <img src="images/grizzly-logo.jpg" alt="grizzly-logo" style="width:300px">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline my-2 my-lg-0 mx-5">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                    style="width:20rem; border-radius:5rem; border:0;">
            </form>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-3">
                    <img src="images/bell.png" alt="">
                </li>
                <li class="nav-item mx-4 mt-2">
                    <span class="font-weight-normal h5">Welcome, Admin ...</span>
                </li>
                <li class="nav-item">
                    <button class="btn btn-primary my-2 my-sm-0 px-4 font-weight-bold" type="submit" action="logout"
                        style="border-radius:5rem;">Logout</button>
                </li>
            </ul>

        </div>
    </nav>
                    <form class="col-md-5 form-group" action="addProduct">
    <div class="container-fluid">
        <div class="row mt-5">
            <div class="col-md-3">
                <div class="card bg-light" style="border:none; height:30rem;">
                    <div class="card-body p-0">
                        <h5 class="card-title bg-secondary text-white px-2 py-1 m-2">PROFILE
                            <span href="#" class="float-right">EDIT</span>
                        </h5>
                        <img class="no-border mx-auto d-block my-3" src="images/profile.jpg" width="100"
                            alt="Card image cap">
                        <span class="card-text text-center">
                            <h4>Helen Cho</h4>
                            <p class="my-1">ID</p>
                            <p class="mt-1 text-primary">GRLY17234</p>
                            <p class="my-1">Designation</p>
                            <p class="mt-1 text-primary">Sr. Admin</p>
                            <p class="my-1">Office</p>
                            <p class="mt-1 text-primary">NYC, NY, USA</p>
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="row ">
                    <div class="col-md-8 p-0">
                        <div class="btn-group btn-group-lg btn-block" role="group">
                            <button class="btn btn-primary text-left" style="border-radius:0; width:19rem; height:4rem; font-size: 2rem;">PRODUCTS</button>
                            <button class="btn btn-secondary text-left" style="border-radius:0; width:19rem; height:4rem; font-size:2rem;">VENDORS</button>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class=" col-lg-6 col-md-8 text-center bg-light">
                        <p class="text-left">1</p>
                        <img src="images/addImage.png" class="mb-2 bx-2">
                        <p class="h5 my-2">Add Images</p>
                    </div>


                        <input type="text" placeholder="Enter Product ID" class="form-control my-1" name="ProductId" style="border:0; border-bottom: 1px solid #CDCDCD;">
                        <select name="category" class="custom-select my-1" name="ProductCategory" style="border:0; border-bottom: 1px solid #CDCDCD;">
                            <option value="">
                                <span>Category</span>
                            </option>
                            <option value="cat1">Cat1</option>
                            <option value="cat2">Cat2</option>
                            <option value="cat3">Cat3</option>
                        </select>
                        <input type="text" placeholder="Name" name="ProductName" class="form-control my-1" style="border:0; border-bottom: 1px solid #CDCDCD;">
                        <input type="text" placeholder="Description" name="ProductDescription" class="form-control my-1" style="border:0; border-bottom: 1px solid #CDCDCD;"">
                        <input type="text" placeholder="Price" name="ProductPrice" class="form-control my-1" style="border:0; border-bottom: 1px solid #CDCDCD;"">
                    
                </div>
            </div>
            <div class="col-md-2 align-self-end">
                <div class="text-right">
                    <button class="btn btn-dark px-4 mb-2" style="border-radius:4rem;" type="submit">Add</button><br>
                    <button class="btn btn-secondary text-dark px-3" style="border-radius:4rem;">Cancel</button>
                </div>
            </div>
        </div>


    </div>
</form>
${status}
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>

</html>