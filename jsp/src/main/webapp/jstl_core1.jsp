
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入JSTL核心标签库，我们才能使用JSTL--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h4>if测试</h4>
<hr>

<form action="jstl_core1.jsp" method="get">
<%--    El表达式获取表单中的数据
${param.参数名}
--%>
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="登录">
</form>
<%--判断如果提交的用户名是admin，则登录成功--%>
<%--<%--%>
<%--if(request.getParameter("username").equals("admin")){--%>
<%--    out.println("success");--%>
<%--}--%>
<%--%>--%>
<c:if test="${param.username == 'admin'}" var="isAdmin">
    <c:out value="welcome to here"></c:out>
</c:if>
<c:out value="${isAdmin}"></c:out>
</body>
</html>
