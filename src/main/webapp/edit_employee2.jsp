<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Coffee Manager</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>
    <style>
        img{
            width: 200px;
            height: 120px;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<div class="container">    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Edit <b>Employee</b></h2>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
    </div>
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="edit2?agency=${agency}" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title"><b>Edit Employee</b></h4>
                        <button onclick="goBack()" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <script>
                            function goBack() {
                                window.history.back();
                            }
                        </script>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label><b>ID</b></label>
                            <input value="${employee.id}" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label><b>Code</b></label>
                            <input value="${employee.code}" name="code" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label><b>Name</b></label>
                            <input value="${employee.name}" name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label><b>Position</b></label>
                            <select  name="position" class="form-select" aria-label="Default select example">
                                <option ${employee.position == "Store Manager" ? "selected":""} value="Store Manager">Store Manager</option>
                                <option ${employee.position == "Leader" ? "selected":""} value="Leader">Leader</option>
                                <option ${employee.position == "Staff" ? "selected":""} value="Staff">Staff</option>
                                <option ${employee.position == "Trainer" ? "selected":""} value="Trainer">Trainer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label><b>Pay1h</b></label>
                            <input value="${employee.pay1h}" name="pay1h" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label><b>PayOT</b></label>
                            <input value="${employee.payOT}" name="payOT" type="text" class="form-control" required>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
</body>
</html>
