
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--定制错误页面--%>
<%@ page errorPage="error/500.jsp" %>
<%--显示的说明这是一个错误界面--%>
<%--<%@ page isErrorPage="true" %>--%>



<html>
<%--定制错误页面--%>
<head>
    <title>jsp指令</title>
</head>
<body>
<%= (1 / 0)%>
</body>
</html>
