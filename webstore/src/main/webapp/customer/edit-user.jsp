<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ncproject.webstore.entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Черный
  Date: 29.12.2016
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Edit user</title>

    <!-- Bootstrap -->
    <link href="${root}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="panel panel-primary">
    <div class="panel-heading">
        <br><br>
    </div>
</div>

<h1 align="center">Edit data</h1>
<form action="${root}/customer/editUser">
    <table align="center">
        <tr>
            <td align="right">Login:</td>
            <td><input type="text" name="login" value="<%=((Customer)request.getSession().getAttribute("myUser")).getLogin()%>"></td>
        </tr>
        <%--<tr>
            <td align="right">Password:</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td align="right">Confirm password:</td>
            <td><input type="password" name="confirm password"></td>
        </tr>--%>
        <tr>
            <td align="right">Email:</td>
            <td><input type="text" name="email" value="<%=((Customer)request.getSession().getAttribute("myUser")).getEmail()%>"></td>
        </tr>
        <tr>
            <td align="right">Name:</td>
            <td><input type="text" name="name" value="<%=((Customer)request.getSession().getAttribute("myUser")).getName()%>"></td>
        </tr>
        <tr>
            <td align="right">Address:</td>
            <td><input type="text" name="address" value="<%=((Customer)request.getSession().getAttribute("myUser")).getAddress()%>"></td>
        </tr>
        <%--<tr>
            <td align="right">Payment:</td>
            <td><select name="payment">
                <option value="">select card type</option>
                <option value="master card">master card</option>
                <option value="visa">visa</option>
            </select></td>
        </tr>--%>
        <tr>
            <td></td>
            <td><input type="submit" value="Change" class="btn btn-default btn-block"></td>
        </tr>
    </table>
</form>
</body>
</html>
