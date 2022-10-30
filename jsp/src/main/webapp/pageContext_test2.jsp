<%--
  Created by IntelliJ IDEA.
  User: adisihansun
  Date: 10/29/22
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  //从pageContext中取出，我们通过寻找的方式来取出
  //从底层到高层（作用域）
  String name1 = (String) pageContext.getAttribute("name1");
  String name2 = (String) pageContext.getAttribute("name2");
  String name3 = (String) pageContext.getAttribute("name3");
  String name4 = (String) pageContext.getAttribute("name4");
  String name5 = (String) pageContext.getAttribute("name5");//不存在
%>

<%--使用EL表达式输出，${} --%>
<h1>取出的值为:</h1>
<h3>${name1}</h3>
<h3>${name2}</h3>
<h3>${name3}</h3>
<h3>${name4}</h3>
<h3>${name5}</h3>//不显示
<h3><%=name5%></h3>//null
</body>
</html>
