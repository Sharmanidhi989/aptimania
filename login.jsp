<%-- 
    Document   : login
    Created on : Feb 16, 2019, 10:55:11 PM
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
        <title>login</title>
    </head>
    <body>
        <%@ include file="_header.jsp" %>
        <br><br><br>
        <div class='container'> 
            <div class='row justify-content-center'>
                <div class='card col-md-4 shadow rounded p-3'>
                    <div class='h2'>Login</div>
                    <div class="card-body">
                        <form action="authenticate.jsp" method="post">
                            <div class="form-group">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" name="username"class="form-control" placeholder="Enter Username">
                            </div>
                            <div class="form-group">
                                <label for="Password">Password</label>
                                <input type="password"name="password" class="form-control" id="Password" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block ">Login</button>
                            </div>
                        </form>
                    </div>
                 </div>
            </div>
        </div>
      <%@ include file="_footer.jsp" %>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
