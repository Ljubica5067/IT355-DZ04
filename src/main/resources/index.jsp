<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registracija</title>
    <script>
        function validateForm() {
            var email = document.forms["registerForm"]["email"].value;
            var password = document.forms["registerForm"]["password"].value;
            var confirmPassword = document.forms["registerForm"]["confirmPassword"].value;

            if (email == "" || password == "" || confirmPassword == "") {
                alert("Morate popuniti sva polja.");
                return false;
            }

            if (password != confirmPassword) {
                alert("Lozinke se ne podudaraju.");
                return false;
            }

            document.cookie = "email=" + email;
            document.cookie = "password=" + password;

            return true;
        }
    </script>
</head>
<body>
<h1>Registracija</h1>
<form name="registerForm" action="login.jsp" onsubmit="return validateForm()" method="post">
    Email: <input type="text" name="email"><br>
    Password: <input type="password" name="password"><br>
    Confirm Password: <input type="password" name="confirmPassword"><br>
    <input type="submit" value="Register">
</form>
</body>
</html>
