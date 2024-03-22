<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script>
        function checkLogin() {
            var email = document.forms["loginForm"]["email"].value;
            var password = document.forms["loginForm"]["password"].value;
            var storedEmail = getCookie("email");
            var storedPassword = getCookie("password");

            if (email == storedEmail && password == storedPassword) {
                return true;
            } else {
                alert("Pogrešan email ili lozinka.");
                return false;
            }
        }

        function getCookie(name) {
            var value = "; " + document.cookie;
            var parts = value.split("; " + name + "=");
            if (parts.length == 2) return parts.pop().split(";").shift();
        }
    </script>
</head>
<body>
<h1>Login</h1>
<form name="loginForm" action="home.jsp" onsubmit="return checkLogin()" method="post">
    Email: <input type="text" name="email"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
