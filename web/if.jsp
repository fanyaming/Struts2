<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/28
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      request.setAttribute("age",17);
    %>
    <s:if test="#request.age>=18">
        你成年了!!!
    </s:if>
<s:else>
    你太小了!!!!
</s:else>
<%
    List<String> list = new ArrayList<String>();
    list.add("A");
    list.add("B");
    list.add("C");
    request.setAttribute("list",list);
%>
<br/>
<s:iterator value="#request.list" var="item">
    <s:property value="item"/>
</s:iterator>
</body>
</html>
