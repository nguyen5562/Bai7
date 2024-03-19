<%--
  Created by IntelliJ IDEA.
  User: Pham-Van-Dinh
  Date: 1/26/2021
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
  </head>
  <body>
  <form action="ControllerServlet" method="post">
    Name:<input type="text" name="name"><br>
    Password:<input type="password" name="password"><br>
    <input type="submit" value="login">
  </form>
  <br>
  <a href="Home" style="font-size: 20px;">Go to Home </a>
  </body>
</html>
