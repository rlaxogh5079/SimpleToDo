<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Model.Account" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
    
        String userID = request.getParameter("userID");
        String userPWD = request.getParameter("userPWD");
        String username = request.getParameter("username");
        String userEmail = request.getParameter("userEmail");
        
        try {
            switch(Account.signup(userID, userPWD, username, userEmail)) {
            case 200:
                out.println("<script>alert('회원가입 성공');</script>");
                out.println("<script>location.href='../pages/login.jsp'</script>");
                break;
                
            case 401:
                out.println("<script>alert('회원가입 실패');</script>");
                out.println("<script>location.href='../pages/signup.jsp'</script>");
                break;
                
            case 409:
                out.println("<script>alert('아이디가 중복됩니다.');</script>");
                out.println("<script>location.href='../pages/signup.jsp'</script>");
            }
            
        } catch (Exception e) {
            throw new Exception("requester.signup error occured.", e);   
        }
    %>
</body>
</html>