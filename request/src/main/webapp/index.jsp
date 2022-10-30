<%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/28/22
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>

<div style="text-align: center">
    <form action="${pageContext.request.contextPath}/login" method="post">
        user:<input type="text" name="username"> <br>
        password:<input type="password" name="password"> <br>
        hobbies:
        <input type="checkbox" name="hobbies" value="girl">girl
        <input type="checkbox" name="hobbies" value="code">code
        <input type="checkbox" name="hobbies" value="film">film
        <input type="checkbox" name="hobbies" value="sing">sing
        <br>
        <input type="submit">

    </form>
</div>

</body>
</html>
