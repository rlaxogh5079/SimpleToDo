<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="../resources/styles/header.css">
    <link rel="stylesheet" href="../resources/styles/root.css">
  </head>
  <body>
    <nav class="navbar">
        <div class="logo">
            <i class="fa-solid fa-list-ol"></i>
            <a href="main.jsp">Simple ToDo</a>
        </div>
        <div class="menu">
            <div class="menu-links">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Contact</a>
                <a href="#">Blog</a>
            </div>
            <%
                if (request.getSession().getAttribute("userID") == null) {
            %>  
            <a href="../pages/login.jsp">
                <button class="log-in">Log in</button>
            </a>
            <%
                }
                else {      
            %>
            <button class="log-in" onclick="buttonClick();">Log out</button>
            <script>
            	const buttonClick = () => {
            		<% request.getSession().removeAttribute("userID"); %>
            		alert("로그아웃 하였습니다.");
            		location.reload();
            	}
            </script>
            <%
                }
            %>
        </div>
        <div class="menu-btn">
              <span></span>
              <span></span>
              <span></span>
              <span></span>x
        </div>
        <div class="menu-sidebar">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Contact</a>
            <a href="#">Blog</a>
            <a href="#">Login</a>
        </div>
    </nav>
    <script src="../resources/scripts/header.js"></script>
  </body>
</html>