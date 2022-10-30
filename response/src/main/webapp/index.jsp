<html>
<body>
<h2>Hello World!</h2>

<%--这里提交的路径需要找到项目的路径--%>
<%--${pageContext.request.contextPath}代表当前的项目--%>
<form action="${pageContext.request.contextPath}/test" method="post">
    user: <input type="text" name="username"><br>
    password: <input type="password" name="password"><br>
    <input type="submit">
</form>
</body>
</html>
