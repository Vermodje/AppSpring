<%--
  Created by IntelliJ IDEA.
  User: Kancnelson
  Date: 30.07.2019
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h2>Insert new User</h2>
<form:form action="/admin/insert" method="post" modelAttribute="user">
    <table border="0" cellpadding="5">
        <tr>
            <td>Login:</td>
            <td><form:input path="login"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td>User role:</td>
            <td><label><form:select path="roles">
                <option value="ROLE_USER">ROLE_USER</option>
                <option value="ROLE_ADMIN">ROLE_ADMIN</option>
            </form:select></label></td>

        </tr>
        <span style="color: red;"><c:out value="${message}"></c:out></span>
        <span style="color: red;"><c:out value="${error}"></c:out></span>
        <tr>
            <td colspan="2"><input type="submit" value="insert"></td>
        </tr>
    </table>
</form:form>
<div class="container">

    <table border="1" cellpadding="5">
        <caption style="font-size: 40px;">All Users</caption>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Login</th>
            <th>Password</th>
            <th>Email</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="user" items="${users}">
            <tr>
                <td style="text-align: center"><c:out value="${user.id}"></c:out></td>
                <td style="text-align: center"><c:out value="${user.name}"></c:out></td>
                <td style="text-align: center"><c:out value="${user.login}"></c:out></td>
                <td style="text-align: center"><c:out value="${user.password}"></c:out></td>
                <td style="text-align: center"><c:out value="${user.email}"></c:out></td>
                <td style="text-align: center">
                    <c:forEach items="${user.roles}" var="role">
                        <c:out value="${role.role}"/>
                    </c:forEach></td>
                <td>
                    <a href="/admin/edit?id=<c:out value="${user.id}"></c:out>">Edit</a>
                    <a href="/admin/delete?id=<c:out value="${user.id}"></c:out>">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="<c:url value="/logout" />">Logout</a>
</div>
</body>
</html>
