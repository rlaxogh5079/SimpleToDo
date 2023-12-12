<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Simple To Do</title>
        <link rel="stylesheet" href="../resources/styles/signup.css" />
    </head>
<body>
    <%!
        boolean isValidated = false;   
     %>
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
                        <input id="userPWDCheck" required type="password" name="userPWDCheck"/> <label for="userPWD">CheckPWD</label>
                    </div>
                </div>
                
                <div class="input-wrapper">
                    <input id="username" required name="username"/> <label for="username">NAME</label>
                </div>
                
                <div class="input-wrapper">
                    <input id="userEmail" required name="userEmail"/> <label for="userEmail">EMAIL</label>
                </div>

                <div class="button-wrapper">
                    <button type="submit" disabled>Sign up</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        document.querySelector(".signup-input-box").addEventListener("change", () => {
        	if (document.querySelector(".signup-input-box").checkValidity()) {
        		const password = document.querySelector("#userPWD");
        		const passwordCheck = document.querySelector("#userPWDCheck");
        		
        		if (password.value == passwordCheck.value) {
        			document.querySelector(".button-wrapper > button").disabled = false;
        			passwordCheck.classList.remove("invalid");
        		}
        		else {
					passwordCheck.classList.add("invalid");
        		}
        	}
        	else {
        		document.querySelector(".button-wrapper > button").disabled = true;
        	}
        })
    </script>
</body>
</html>