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
        try {
            switch(Account.login(userID, userPWD)) {
            case 200:
                session.setAttribute("userID", userID);
                out.println("<script>alert('로그인 성공');</script>");
                out.println("<script>location.href='../pages/main.jsp'</script>");
                break;
                
            case 401:
            case 404:
                out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.');</script>");
                out.println("<script>location.href='../pages/login.jsp'</script>");
                break;
            }
            
        } catch (Exception e) {
            throw new Exception("requester.login error occured.", e);   
        }
    %>
</body>
</html>