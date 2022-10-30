<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp基础语法</title>
</head>
<body>

<%--jsp表达式
作用：用来将程序的输出，输出到客户端
<%= 变量或表达式%>
--%>
<%= new java.util.Date()%>

<hr>

<%--jsp脚本片段
<%代码段%>
--%>
<%
    int sum = 0;
    for (int i = 0; i < 100; i++) {
        sum += i;
    }
    out.println("<h1>sum = " + sum + "</h1>");
%>

<hr>
<%--脚本片段的再实现--%>
<%
    int x = 10;
    out.println(x);
%>
<p>this is a jsp file</p>
<%
    int y = 20;
    out.println((x + y));
%>
<hr>

<%--在代码中嵌入html元素--%>
<%
    for (int i = 0; i < 5; i++) {
%>
<h1>good luck, AD <%= i%> </h1>
<%
    }
%>

<hr>
<%--jsp声明
<%!%>
jsp声明会被编译到jsp生产的Java类中
而其他的，就会被声称到_jspService方法中
--%>
<%!
    static {
        System.out.println("loading servlet");
    }
    private int globalVar = 0;
    public void initial(){
        System.out.println("进入了initial");
    }
%>




</body>
</html>
