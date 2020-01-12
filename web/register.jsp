<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/28
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <s:form namespace="/pss" action="#" method="GET" theme="simple">
        账号:<s:textfield name="username"></s:textfield><br/>
        密码:<s:password name="password"></s:password><br/>
        性别:<s:radio list="#{'boy':'男','girl':'女'}" name="hobby"></s:radio>
        <br/>
        爱好:<s:checkboxlist list="#{'1':'java','2':'c'}" name="hobby"></s:checkboxlist>
        <br/>
        城市:<s:select list="#{'1':'上海','2':'杭州','3':'合肥'}" name="city" headerKey="-1" headerValue="请选择"></s:select>
        <br/>
        个人介绍:<s:textarea rows="5" cols="10" name="intro"></s:textarea>
        <br/>
        <s:submit value="注册"></s:submit>
    </s:form>
</body>
</html>
