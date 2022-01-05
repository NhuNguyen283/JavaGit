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
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/menu.jsp">Menu</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/coffee2">Coffee</a></li>
            <li><a href="/demo_war_exploded/milktea2">Milk Tea</a></li>
            <li><a href="/demo_war_exploded/agency2?name=agency2">Agency</a></li>
            <li><a href="/demo_war_exploded/total2">Total Report Daily</a></li>
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
<div class="container-fluid" style="margin-left: 50px">
    <div class="navbar-header">
        <h2><b>Report Salary Of Employee</b></h2>
    </div>
</div>
<div class="container">
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>CODE</th>
            <th>NAME</th>
            <th>POSITION</th>
            <th>PAY1H</th>
            <th>PAYOT</th>
            <th>WORKING HOURS</th>
            <th>HOURS OVERTIME</th>
            <th>SALARY</th>
            <th>ENTER WORKING HOURS</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="x" items="${list}">
            <tr>
                <td>${x.code}</td>
                <td>${x.name}</td>
                <td>${x.position}</td>
                <td>${x.pay1h}</td>
                <td>${x.payOT}</td>
                <td>${x.workingHours}</td>
                <td>${x.hoursOT}</td>
                <td>${x.salary}</td>
                <td>
                    <a href="salary2?sid=${x.id}">
                        Enter
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="container">
    <br>
    <p class="fw-bolder" style="font-size:25px">TOTAL</p>
    <div class="row mt-3">
        <div class="col-md-4">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Total Working Hours(H)</th>
                </tr>
                </thead>
                <form action="/reportSalary2" method="get">
                    <tbody>
                    <tr>
                        <td>${sum.totalWH}</td>
                    </tr>
                    </tbody>
                </form>
            </table>
        </div>
        <div class="col-md-4">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Total Hours Overtime(H)</th>
                </tr>
                </thead>
                <form action="/reportSalary2" method="get">
                    <tbody>
                    <tr>
                        <td>${sum.totalOT}</td>
                    </tr>
                    </tbody>
                </form>
            </table>
        </div>
        <div class="col-md-4">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Total Salary(VND)</th>
                </tr>
                </thead>
                <form action="/reportSalary2" method="get">
                    <tbody>
                    <tr>
                        <td>${sum.total}</td>
                    </tr>
                    </tbody>
                </form>
            </table>
        </div>
    </div>
</div>
</body>
</html>