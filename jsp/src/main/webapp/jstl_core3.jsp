<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/30/22
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>foreach测试</title>
</head>
<body>
<%
    ArrayList<String> strings = new ArrayList<>();
    strings.add("ad1");
    strings.add("sh2");
    strings.add("ad3");
    strings.add("sh4");
    strings.add("ad5");
    strings.add("sh6");
    request.setAttribute("list",strings);
%>
<%--
var:每一次遍历出来的对象
items:要遍历的对象
begin:从哪里开始
end:到哪里
step:步长
--%>
<c:forEach var="s" items="${list}">
    <c:out value="${s}"></c:out> <br>
</c:forEach>

<hr>
<c:forEach var="s" items="${list}" begin="1" end="4" step="2">
    <c:out value="${s}"></c:out> <br>
</c:forEach>

</body>
</html>
