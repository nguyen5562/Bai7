<%--
  Created by IntelliJ IDEA.
  User: Pham-Van-Dinh
  Date: 1/26/2021
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Bean.LoginBean"%>
<html>
<head>
    <p>You are successfully logged in!</p>
    <%
        LoginBean bean=(LoginBean) request.getAttribute("bean");
        out.print("Welcome, "+bean.getName());
    %>
    <a href="Home.jsp">Click here</a>
</head>
<body>

</body>
</html>
