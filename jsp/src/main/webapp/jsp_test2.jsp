<%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/29/22
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--@ include:会将两个页面合二为一--%>
<%@ include file="common/header.jsp"%>
<h1>this is a body</h1>
<%@ include file="common/footer.jsp"%>
<hr>
<%--jsp标签
jsp:include 拼接页面，本质还是三个页面
--%>
<jsp:include page="/common/header.jsp"/>
<h1>this is a body</h1>
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
