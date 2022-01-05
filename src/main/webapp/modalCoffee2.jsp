<%--
  Created by IntelliJ IDEA.
  User: PHONG
  Date: 12/17/2021
  Time: 12:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<div class="hero-image">
    <div class="hero-text">
        <h1 style="font-size:50px">The Happy Garden</h1>
        <p>And I'm a Drinker and Thinker</p>
    </div>
</div>
<br>
<br>
<div class="container rounded bg-white mt-5">

    <div class="row">
        <div class="col-md-8">
            <form action="modalCoffee2" method="post">
                <div class="p-3 py-5">
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label for="id">ID: </label><input class="form-control" type="text" name="id" id="id"
                                                               value="${modal.id}"
                                                               readonly></div>
                        <div class="col-md-6">
                            <label for="name">NAME: </label><input class="form-control" type="text"
                                                                   name="name" id="name"
                                                                   value="${modal.name}"
                                                                   readonly></div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label for="price">PRICE: </label><input class="form-control" type="text" name="price"
                                                                     id="price"
                                                                     value="${modal.price}"
                                                                     readonly/></div>
                        <div class="col-md-6">
                            <label for="grCoffee">COFFEE(GR): </label><input class="form-control" type="text"
                                                                             name="grCoffee"
                                                                             id="grCoffee"
                                                                             value="${modal.grCoffee}"
                                                                             readonly/></div>
                    </div>
                    <div class="row mt-3">

                        <div class="col-md-6">
                            <label for="freshMilk">FRESH MILK(ML): </label><input class="form-control" type="text"
                                                                                  name="freshMilk"
                                                                                  id="freshMilk"
                                                                                  value="${modal.freshMilk}"
                                                                                  readonly/></div>
                        <div class="col-md-6"><label for="condensedMilk">CONDENSED MILK(ML): </label><input
                                class="form-control" type="text"
                                name="condensedMilk"
                                id="condensedMilk"
                                value="${modal.condensedMilk}"
                                readonly/></div>
                    </div>
                    <div class="row mt-3">

                        <div class="col-md-6">
                            <label for="sugar">SUGAR: </label><input class="form-control" type="text" name="sugar"
                                                                     id="sugar"
                                                                     value="${modal.sugar}"
                                                                     readonly/></div>

                        <div class="col-md-6"><label for="quantity">QUANTITY: </label><input type="text" name="quantity"
                                                                                             id="quantity"
                                                                                             class="form-control" required/>
                        </div>
                    </div>

                    <br>

                    <button type="submit" class="btn btn-primary">
                        Save changes
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
