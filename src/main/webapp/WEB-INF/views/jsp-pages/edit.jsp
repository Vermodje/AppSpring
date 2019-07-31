<%--
  Created by IntelliJ IDEA.
  User: Kancnelson
  Date: 30.07.2019
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit User</h1>
<form action="/admin/update" method="post" modelAttribute="user">
    <table border="0" cellpadding="5">
        <tr>
            <td>ID:</td>
            <td>${user.id}
                <form:hidden path="id"/>
            </td>
        </tr>
        <tr>
            <td>Login:</td>
            <td><form:input path="login" value="${user.login}"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><form:input path="name" value="${user.name}"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="email" value="${user.email}"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:input path="password" value="${user.password}"/></td>
        </tr>
        <tr>
            <td>User role:</td>
            <td><label><form:select path="roles">
                <option value="ROLE_USER">ROLE_USER</option>
                <option value="ROLE_ADMIN">ROLE_ADMIN</option>
            </form:select></label></td>

        </tr>

        <tr>
            <td colspan="2"><input type="submit" value="Edit"></td>
        </tr>
    </table>
</form>
<span style="color: red;"><c:out value="${message}"></c:out></span>
<a href="<c:url value="/logout" />">Logout</a>
</body>
</html>