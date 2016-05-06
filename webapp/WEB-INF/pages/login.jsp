<%--
  Created by IntelliJ IDEA.
  User: vitaliy
  Date: 05.05.16
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h1 align="center">Login</h1>

<div align="center">

    <form method="post" action="<c:url value='login'/>">


        <input type="text" name="user_login" value="login">
        <br>
        <input type="password" name="user_password" value="password">
        <br>

        <input type="checkbox" name="remember_me"/><label>запомнить</label>

        <input type="submit" value="GO">



        <div align="center">
            <c:if test="${not empty error}">
                <h3>${error}</h3>
            </c:if>
        </div>

        <%-- <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
                value="<c:out value="${_csrf.token}"/>"/>--%>

    </form>

</div>

</body>
</html>
