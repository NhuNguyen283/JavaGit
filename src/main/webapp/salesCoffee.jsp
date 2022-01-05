<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Coffee Manager</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="css/agency.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .hero-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://i.pinimg.com/originals/d4/a7/12/d4a712855bb7eb5f87aff423d40640b6.jpg");
            height: 50%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .hero-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }

        .hero-text button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 10px 25px;
            color: black;
            background-color: #ddd;
            text-align: center;
            cursor: pointer;
        }

        .hero-text button:hover {
            background-color: #555;
            color: white;
        }
    </style>
    <style>
        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
        }

        th, td {
            text-align: center;
            padding: 16px;
        }

        tr:nth-child(even) {
            background-color: #dddd;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/menu.jsp">Menu</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/coffee">Coffee</a></li>
            <li><a href="/demo_war_exploded/milktea">Milk Tea</a></li>
            <li><a href="/demo_war_exploded/agency?name=agency1">Agency</a></li>
            <li><a href="/demo_war_exploded/total">Total Report Daily</a></li>
        </ul>
        <div class="navbar-form navbar-right">
            <a href="./logout">Log Out</a>
        </div>
    </div>
</nav>
<div class="hero-image">
    <div class="hero-text">
        <h1 style="font-size:50px">The Happy Garden</h1>
        <p>And I'm a Drinker and Thinker</p>
    </div>
</div>
<br>
<div class="container">
    <table class="table table-striped">

        <thead>
        <tr>
            <th>IMAGE</th>
            <th>CODE</th>
            <th>NAME</th>
            <th>SIZE</th>
            <th>PRICE</th>
            <th>COFFEE(GR)</th>
            <th>FRESH MILK(ML)</th>
            <th>CONDENSED MILK(ML)</th>
            <th>SUGAR(ML)</th>
            <th>QUANTITY</th>
            <th>TOTAL</th>
            <th>REPORT</th>
        </tr>
        </thead>
        <form action="/salesCoffee" method="get">
            <tbody>
            <c:forEach var="x" items="${listCoffee}">
                <tr>
                    <td><img class="card-image-top img-thumbnail" src="${x.image}" alt="Card image cap" height="100"
                             width="100"></td>
                    <td>${x.code}</td>
                    <td>${x.name}</td>
                    <td>${x.size}</td>
                    <td>${x.price}</td>
                    <td>${x.grCoffee}</td>
                    <td>${x.freshMilk}</td>
                    <td>${x.condensedMilk}</td>
                    <td>${x.sugar}</td>
                    <td>${x.quantity}</td>
                    <td>${x.total}</td>
                    <td>
                        <a href="modalCoffee?sid=${x.id}">
                            Add
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </form>
    </table>
</div>
<div class="container">
    <br>
    <p class="fw-bolder" style="font-size:25px">TOTAL</p>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>SALES</th>
            <th>COFFEE(GR)</th>
            <th>FRESH MILK(ML)</th>
            <th>CONDENSED MILK(ML)</th>
            <th>SUGAR(ML)</th>
            <th>QUANTITY</th>
        </tr>
        </thead>
        <form action="/salesCoffee" method="get">
            <tbody>
            <tr>
                <td>${sum.totalSum}</td>
                <td>${sum.totalGrCoffee}</td>
                <td>${sum.totalFreshMilk}</td>
                <td>${sum.totalCondensedMilk}</td>
                <td>${sum.totalSugar}</td>
                <td>${sum.totalQuantity}</td>
            </tr>
            </tbody>
        </form>
    </table>
</div>
</body>
</html>