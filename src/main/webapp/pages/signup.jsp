<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Simple To Do</title>
        <link rel="stylesheet" href="../resources/styles/signup.css" />
    </head>
<body>
    <jsp:include page="../components/header.jsp" />
    <div class="signup-container">
        <div class="signup-box">
             <a class="back-arrow" href="login.jsp">
                <i class="fa-solid fa-arrow-left"></i>
             </a>
            <div class="signup-header">
                <div>Sign Up</div>
            </div>
            <form class="signup-input-box" action="../requester/signup.jsp" method="POST">
                <div class="input-wrapper">
                    <input id="userID" required name="userID"/> <label for="userID">ID</label>
                </div>
                
                <div class="pwd-area">
                    <div class="input-wrapper input-wrapper-half">
                        <input id="userPWD" required type="password" name="userPWD"/> <label for="userPWD">PWD</label>
                    </div>
                    
                    <div class="input-wrapper input-wrapper-half">
                        <input id="userPWD" required type="password" name="userPWD"/> <label for="userPWD">CheckPWD</label>
                    </div>
                </div>
                
                <div class="input-wrapper">
                    <input id="userName" required name="userName"/> <label for="userName">NAME</label>
                </div>
                
                <div class="input-wrapper">
                    <input id="userEmail" required name="userEmail"/> <label for="userEmail">EMAIL</label>
                </div>

                <div class="button-wrapper">
                    <button type="submit">Sign up</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>