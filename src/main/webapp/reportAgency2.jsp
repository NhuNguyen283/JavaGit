<%--
  Created by IntelliJ IDEA.
  User: PHONG
  Date: 12/17/2021
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
        .navbar {
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            background-color: #2d2d30;
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }
        .navbar li a, .navbar .navbar-brand {
            color: #d5d5d5 !important;
        }
        .navbar-nav li a:hover {
            color: #fff !important;
        }
        .navbar-nav li.active a {
            color: #fff !important;
            background-color: #29292c !important;
        }
        .navbar-default .navbar-toggle {
            border-color: transparent;
        }
        .dropdown-menu li a {
            color: #000 !important;
        }
        .dropdown-menu li a:hover {
            background-color: red !important;
        }
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
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/home.jsp">HOME</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/adminCoffee">Menu Coffee Agency 1</a></li>
            <li><a href="/demo_war_exploded/adminCoffee2">Menu Coffee Agency 2</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/demo_war_exploded/adminMilktea">Menu Milk Tea Agency 1</a></li>
                    <li><a href="/demo_war_exploded/adminMilktea2">Menu Milk Tea Agency 2</a></li>
                    <li><a href="/demo_war_exploded/adminEmployee?name=agency1">Employee</a></li>
                    <li><a href="/demo_war_exploded/reportAgency1">Report Of Agency 1</a></li>
                    <li class="active"><a href="/demo_war_exploded/reportAgency2">Report Of Agency 2</a></li>
                </ul>
            </li>

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
<form action="/reportAgency2" method="get">
    <div class="container">
        <p class="fw-bolder" style="font-size:30px"><b>AGENCY 2: REPORT DAILY</b></p>
        <p class="fw-bolder" style="font-size:20px"><b>SALES: <i>${moneyCoffee.total + moneyTea.total}(VND)</i></b></p>
        <div class="container">
            <div class="col-md-6">
                <p class="fw-bolder" style="font-size:15px"><i>SALES COFFEE</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th></th>
                        <th>TOTAL(VND)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${moneyCoffee.imgMoney}" alt="Card image cap"
                                 height="60"
                                 width="60"></td>
                        <td>${moneyCoffee.total}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-6">
                <p class="fw-bolder" style="font-size:15px"><i>SALES MILK TEA</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th></th>
                        <th>TOTAL(VND)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${moneyTea.imgMoney}" alt="Card image cap"
                                 height="60"
                                 width="60"></td>
                        <td>${moneyTea.total}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
        <p class="fw-bolder" style="font-size:20px"><b>SALARY OF EMPLOYEE</b></p>
        <div class="container">
            <div class="col-md-4">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Total Working Hours(H)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${employee.totalWH}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-4">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Total Hours Overtime(H)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${employee.totalOT}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-4">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Total Salary(VND)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${employee.total}</td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
        <br>
        <p class="fw-bolder" style="font-size:20px"><b>USAGE AND INVENTORY</b></p>
        <div class="container">
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>COFFEE</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>INITIAL INVENTORY(1KG/PACKAGE)</th>
                        <th>REMAINING INVENTORY(1KG/PACKAGE)</th>
                        <th>INVENTORY TO IMPORT(PACKAGE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${coffee.imgCoffee}" alt="" height="100"
                                 width="100"></td>
                        <td>10</td>
                        <td>${coffee.remain}</td>
                        <td>${coffee.importNumber}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>SUGAR</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>INITIAL INVENTORY(750ML/BOTTLE)</th>
                        <th>REMAINING INVENTORY(750ML/BOTTLE)</th>
                        <th>INVENTORY TO IMPORT(BOTTLE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${sugar.imgSugar}" alt="" height="100"
                                 width="100"></td>
                        <td>15</td>
                        <td>${sugar.remain}</td>
                        <td>${sugar.importNumber}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>CONDENSED MILK</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>INITIAL INVENTORY(900ML/BOTTLE)</th>
                        <th>REMAINING INVENTORY(900ML/BOTTLE)</th>
                        <th>INVENTORY TO IMPORT(BOTTLE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${condensedMilk.imgMilk}" alt=""
                                 height="100"
                                 width="100"></td>
                        <td>10</td>
                        <td>${condensedMilk.remain}</td>
                        <td>${condensedMilk.importNumber}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>FRESH MILK</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>INITIAL INVENTORY(450ML/BOTTLE)</th>
                        <th>REMAINING INVENTORY(450ML/BOTTLE)</th>
                        <th>INVENTORY TO IMPORT(BOTTLE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><img class="card-image-top img-thumbnail" src="${milk.imgFreshMilk}" alt="" height="100"
                                 width="100"></td>
                        <td>25</td>
                        <td>${milk.remain}</td>
                        <td>${milk.importNumber}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>SYRUP</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>TYPE</th>
                        <th>INITIAL INVENTORY(750ML/BOTTLE)</th>
                        <th>REMAINING INVENTORY(750ML/BOTTLE)</th>
                        <th>INVENTORY TO IMPORT(BOTTLE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="x" items="${syrup}">
                        <tr>
                            <td><img class="card-image-top img-thumbnail" src="${x.imgSyrup}" alt="" height="100"
                                     width="100"></td>
                            <td>${x.typeofSyrup}</td>
                            <td>15</td>
                            <td>${x.remain}</td>
                            <td>${x.importNumber}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-md-8">
                <p class="fw-bolder" style="font-size:15px"><i>TEA</i></p>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>IMAGE</th>
                        <th>TYPE</th>
                        <th>INITIAL INVENTORY(150GR/PACKAGE)</th>
                        <th>REMAINING INVENTORY(150GR/PACKAGE)</th>
                        <th>INVENTORY TO IMPORT(PACKAGE)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="x" items="${tea}">
                        <tr>
                            <td><img class="card-image-top img-thumbnail" src="${x.imgTea}" alt="" height="100"
                                     width="100"></td>
                            <td>${x.typeofTea}</td>
                            <td>15</td>
                            <td>${x.remain}</td>
                            <td>${x.importNumber}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>
</body>
</html>

