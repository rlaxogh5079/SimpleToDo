<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple To Do</title>
<link rel="stylesheet" href="../resources/styles/login.css" />
</head>
<body>
    <jsp:include page="../components/header.jsp" />
    <div class="login-container">
        <div class="login-box">
            <div class="login-header">
                <div>Login</div>
            </div>

            <form class="login-input-box" action="../requester/login.jsp" method="POST">
                <div class="input-wrapper">
                    <input id="userID" required name="userID" /> <label for="userID">ID</label>
                </div>

                <div class="input-wrapper">
                    <input id="userPWD" required type="password" name="userPWD" /> <label for="userPWD">PWD</label>
                </div>

                <div class="button-wrapper">
                    <button type="submit">Login</button>
                </div>

                <div class="login-footer">
                    Don't have an account? &nbsp; <a href="signup.jsp">Create your account</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>