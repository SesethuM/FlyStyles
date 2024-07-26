<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyStyles Shopping Cart</title>
<%@include file="Includes/Header.jsp" %>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f9fa;
    }
    .navbar {
        background-color: #343a40;
    }
    .navbar-brand, .nav-link {
        color: #fff !important;
    }
    .navbar-brand {
        font-size: 1.5em;
        font-weight: bold;
    }
    .nav-item.active .nav-link {
        color: #ffc107 !important;
    }
    .hero-section {
        background: url('../FlyStyles/images/pink sneakers.jpg') no-repeat center center;
        background-size: cover;
        height: 500px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: green;
        text-align: center;
    }
    .hero-section h1 {
        font-size: 4em;
        margin: 0;
        font-weight: bold
    }
    .hero-section p {
        font-size: 1.5em;
        margin-top: 10px;
    }
    .container {
        padding: 20px;
    }
    .product-section {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .product-card {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 20px;
        width: 300px;
        text-align: center;
        transition: transform 0.2s;
    }
    .product-card:hover {
        transform: scale(1.05);
    }
    .product-card img {
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        width: 100%;
    }
    .product-card h5 {
        font-size: 1.2em;
        margin: 15px 0;
    }
    .product-card p {
        color: #666;
        margin: 0 15px 15px;
    }
    .product-card button {
        background-color: #28a745;
        border: none;
        border-radius: 5px;
        color: #fff;
        padding: 10px 20px;
        margin-bottom: 15px;
        cursor: pointer;
    }
    .product-card button:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="IndexPage.jsp">FlyStyles Shopping Cart</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shop</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<section class="hero-section">
    <div>
        <h1>Welcome to FlyStyles</h1>
        <p>Your favorite place to shop the latest shoes</p>
    </div>
</section>

<div class="container">
    <h2>Featured Products</h2>
    <div class="product-section">
        <div class="product-card">
            <img src="images/Dior Shoes.jpg" alt="Shoe 1">
            <h5>Product 1</h5>
            <p>$49.99</p>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="images/Mocha Shoes.jpg" alt="Shoe 2">
            <h5>Product 2</h5>
            <p>$59.99</p>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="images/Los Angeles.jpg" alt="Shoe 3">
            <h5>Product 3</h5>
            <p>$69.99</p>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<%@include file="Includes/Footer.jsp" %>
</body>
</html>
