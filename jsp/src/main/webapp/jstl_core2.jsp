<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/30/22
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>when测试</title>
</head>
<body>
<%--定义一个变量名为score，值为85--%>
<c:set var="score" value="85"></c:set>
<c:choose>
    <c:when test="${score >= 90}">
        成绩优秀
    </c:when>
    <c:when test="${score >= 80}">
        成绩一般
    </c:when>
    <c:when test="${score >= 70}">
        成绩良好
    </c:when>
    <c:when test="${score < 60}">
        成绩不及格
    </c:when>
</c:choose>
</body>
</html>
