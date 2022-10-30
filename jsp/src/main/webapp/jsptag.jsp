
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>1</h1>
<%--<jsp:include page=""--%>

<%--http://localhost:8080/jsp_war/jsptag.jsp?name=adsh&age=18--%>
<jsp:forward page="/jsptag2.jsp">
    <jsp:param name="name" value="adsh"/>
    <jsp:param name="age" value="18"/>
</jsp:forward>

</body>
</html>
