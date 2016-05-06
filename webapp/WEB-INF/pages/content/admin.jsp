<%--
  Created by IntelliJ IDEA.
  User: vitaliy
  Date: 05.05.16
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
Admin page!
<form action="<c:url value="/logout"/>" method="post">
    <input type="submit" value="Logoff"/> (also clears any remember-me cookie)
    <security:csrfInput/>
</form>
</body>
</html>
