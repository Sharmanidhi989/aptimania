<%-- 
    Document   : index
    Created on : Feb 16, 2019, 12:31:07 PM
    Author     : nidhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
         integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>signup</title>
    </head>
    <body>
        <%@ include file="_header.jsp" %>
        <br><br><br>
        <div class='container'> 
            <div class='row justify-content-center'>
                <div class='card col-md-6 shadow rounded p-3'>
                    <div class='h2'>Sign Up</div>
                    <div class="card-body">
                        <form action="register.jsp" method="post">
                            <div class="form-group">
                                <label for="first_name">First Name</label>
                                <input type="text" name="first_name"class="form-control" placeholder="Enter First Name">
                            </div>
                            <div class="form-group">
                                <label for="last_name">Last Name</label>
                                <input type="text" class="form-control" name="last_name" placeholder="Enter Last Name">
                            </div>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" name="username"class="form-control" placeholder="Enter Username">
                                <small class="form-text text-muted">Username should be unique.</small>
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender</label>
                                <input list="gender" name="gender"  class="form-control">
                                <datalist id="gender">
                                    <option value="Female">
                                    <option value="Male">
                                </datalist>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="password1">Password</label>
                                <input  name="password" type="password" class="form-control" id="password1" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block ">Join us</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <br><br><br>
        <%@ include file="_footer.jsp" %>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
