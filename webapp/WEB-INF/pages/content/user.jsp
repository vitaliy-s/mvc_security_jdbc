<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vitaliy
  Date: 05.05.16
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
</head>
<body>
User page!
<br>
<h2>hello ${pageContext.request.userPrincipal.name}</h2>
<a href="<c:url value="/admin"/> "> admin</a>

<form action="<c:url value="/logout"/>" method="post">
    <input type="submit" value="Logoff"/> (also clears any remember-me cookie)
    <security:csrfInput/>
</form>
</body>
</html>
