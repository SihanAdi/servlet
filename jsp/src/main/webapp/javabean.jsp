<%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/30/22
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="people" class="pojo.People" scope="page"/>

<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="name" value="ad"/>
<jsp:setProperty name="people" property="age" value="18"/>
<jsp:setProperty name="people" property="address" value="DC"/>

<jsp:getProperty name="people" property="id"/>
<jsp:getProperty name="people" property="name"/>
<jsp:getProperty name="people" property="age"/>
<jsp:getProperty name="people" property="address"/>
</body>
</html>
