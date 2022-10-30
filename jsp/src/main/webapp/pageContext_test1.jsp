
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--内置对象--%>

<%
    pageContext.setAttribute("name1","adsh1");//保在的数据只在一个页面中有效
    request.setAttribute("name4","adsh4");//保在的数据只在一次请求中有效，请求转发会携带这个数据
    session.setAttribute("name2","adsh2");//保存的数据只在一次会话中有效，从打开浏览器到关闭浏览器
    application.setAttribute("name3","adsh3");//保存的数据只在服务器中有效。从打开服多器到关闭服务器

%>

<%
    //从pageContext中取出，我们通过寻找的方式来取出
    //从底层到高层（作用域）:page-›request--›session--›application
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
