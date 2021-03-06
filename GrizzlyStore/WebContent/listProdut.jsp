<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cognizant.entity.Product" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Product</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">
   <style>
       #login_store_logo{
    width: 40rem;
}
#login_input{
    border:0;
    width:15rem;
    border-radius:4rem;
}
.round {
    position: relative;
  }
  
  .round label {
    background-color: #fff;
    border: 2px solid rgb(129, 129, 129);
    border-radius: 50%;
    cursor: pointer;
    height: 20px;
    left: 0;
    position: absolute;
    top: 0;
    width: 20px;
  }
  
  .round label:after {
    border: 2px solid #fff;
    border-top: none;
    border-right: none;
    content: "";
    height: 6px;
    left: 2px;
    opacity: 0;
    position: absolute;
    top: 3px;
    transform: rotate(-45deg);
    width: 12px;
  }
  
  .round input[type="checkbox"] {
    visibility: hidden;
  }
  
  .round input[type="checkbox"]:checked + label {
    background-color: #000000;
    border-color: #000000;
  }
  
  .round input[type="checkbox"]:checked + label:after {
    opacity: 1;
  }
   </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
        <img src="images/grizzly-logo.jpg" alt="grizzly-logo" style="width:300px">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline my-2 my-lg-0 mx-5">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="width:20rem; border-radius:5rem; border:0;">
            </form>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-3">
                    <img src="images/bell.png" alt="">
                </li>
                <li class="nav-item mx-4 mt-2">
                    <span class="font-weight-normal h5">Welcome, Admin ...</span>
                </li>
                <li class="nav-item">
                    <button class="btn btn-primary my-2 my-sm-0 px-4 font-weight-bold" type="submit" style="border-radius:5rem;" action="logout">Logout</button>
                </li>
            </ul>

        </div>
    </nav>

    <div class="container-fluid">
        <div class="row mt-5">
            <div class="col-md-3">
                <div class="card bg-light" style="border:none; height:30rem;">
                    <div class="card-body p-0">
                        <h5 class="card-title bg-secondary text-white px-2 py-1 m-2">PROFILE
                            <span href="#" class="float-right">EDIT</span>
                        </h5>
                        <img class="no-border mx-auto d-block my-3" src="images/profile.jpg" width="100" alt="Card image cap">
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
            <div class="col-md-9">
                <div class="row ">
                    <div class="col-md-8 p-0">
                        <div class="btn-group btn-group-lg btn-block" role="group">
                            <button class="btn btn-primary text-left" style="border-radius:0; width:19rem; height:4rem; font-size: 2rem;">PRODUCTS</button>
                            <button class="btn btn-secondary text-left" style="border-radius:0; width:19rem; height:4rem; font-size:2rem;">VENDORS</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col mt-3">
                        <form class="form-inline">
                            <select name="category" class="custom-select bg-light my-2 px-5" style="border:0; border-radius:4rem;">
                                <option value="" selected>
                                    <span>Choose action</span>
                                </option>
                                <option value="">Mobile</option>
                            </select>

                            <input class="form-control bg-light px-4 mx-1" type="search" placeholder="Category Name" style="border:0; border-radius:4rem;">
                            </button>

                            <select name="category" class="custom-select my-2 px-5 mr-5 bg-light" style="border:0; border-radius:4rem;">
                                <option value="" selected>
                                    <span class="px-4">Sort By</span>
                                </option>
                                <option value="">Mobile</option>
                            </select>
                            <button type="submit" class="btn btn-dark text-white ml-5 float-right" style="display:inline-block; border-radius:4rem; width:9rem;">Add Product</button>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-hover mr-4 mt-3">
                        <thead>
                            <tr class="text-primary">
                                <th scope="col"></th>
                                <th scope="col">Product List</th>
                                <th scope="col">Brand</th>
                                <th scope="col">Category</th>
                                <th scope="col">Rating</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                         <!--    <tr class="font-weight-bold">
                                <td>
                                    <div class="round">
                                        <input type="checkbox" id="checkbox1" />
                                        <label for="checkbox1"></label>
                                    </div>
                                </td>
                                <td>MSI 123</td>
                                <td>MSI</td>
                                <td>Gamming Laptop</td>
                                <td class="font-weight-normal text-primary text-center">4.1</td>
                                <td>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>View</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Block</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Remove</button>
                                </td>
                            </tr>
                            <tr class="font-weight-bold">
                                <td>
                                    <div class="round">
                                        <input type="checkbox" id="checkbox2" />
                                        <label for="checkbox2"></label>
                                    </div>
                                </td>
                                <td>Macbook</td>
                                <td>Apple</td>
                                <td>Laptop</td>
                                <td class="font-weight-normal text-primary text-center">2.8</td>
                                <td>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>View</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Block</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Remove</button>
                                </td>
                            </tr>
                            <tr class="font-weight-bold">
                                <td>
                                    <div class="round">
                                        <input type="checkbox" id="checkbox3" />
                                        <label for="checkbox3"></label>
                                    </div>
                                </td>
                                <td>ROG 1983</td>
                                <td>ROG</td>
                                <td>Gamming Laptop</td>
                                <td class="font-weight-normal text-primary text-center">4.9</td>
                                <td>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>View</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Block</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Remove</button>
                                </td>
                            </tr> -->
                        <c:forEach items="${products}" var="element">
                            <tr class="font-weight-bold">    
                                <td>
                                    <div class="round">
                                        <input type="checkbox" id="checkbox4" />
                                        <label for="checkbox4"></label>
                                    </div>
                                </td>
                              <td>${element.getProductName()}</td> 
                              <td>${element.getProductCategory()}</td>
                              <td>${element.getProductPrice()}</td>
                                <td class="font-weight-normal text-primary text-center">4.3</td>
                                <td>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>View</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Block</button>
                                    <button class="btn btn-secondary px-3" style="border-radius:20px;" disabled>Remove</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
    </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>

</html>