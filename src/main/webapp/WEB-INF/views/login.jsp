<%--
  Created by IntelliJ IDEA.
  User: Kancnelson
  Date: 30.07.2019
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form  method="post">
    <table>
        <tr>
            <td>Login:</td>
            <td><input  name="login"></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input name="password"/></td>
        </tr>
        <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
        </tr>
    </table>
</form>
<span style="color: red;"><c:out value="${error}"></c:out></span>
</body>
</html>