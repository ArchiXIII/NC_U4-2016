<%@ page import="com.ncproject.webstore.entity.Customer" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Order page</title>

    <!-- Bootstrap -->
    <link href="${root}/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${root}/js/bootstrap.min.js"></script>

<div class="panel panel-primary">
    <div class="panel-heading">
        <h4 align="right"><a href="${root}/logout">Logout</a></h4>
        <br><br>
    </div>
</div>

<div class="row">
    <div class="col-md-6 col-md-offset-3">

        <table class="table table-hover">
            <thead>
            <tr>
                <td>Date</td>
                <td>List of products</td>
                <td>Sum</td>
                <td>Status</td>
            </tr>
            </thead>

            <c:forEach var="tempOrder" items="${ORDERS_LIST}">
                <%--<c:url var = "DelFromCart" value="/cart">--%>
                <%--<c:param name="command" value="DEL" />--%>
                <%--<c:param name="id" value="${tempProduct.id}"/>--%>
                <%--</c:url>--%>
                <c:url var ="loadLink" value="/admin/loadEmailForm">
                    <c:param name="customerId" value="${tempOrder.customer_id}"/>
                </c:url>
                <tr>
                    <td> ${tempOrder.data} </td>
                    <td> ${tempOrder.product_list} </td>
                    <td> ${tempOrder.total} </td>
                    <td> ${tempOrder.status} </td>

                    <td>
                        <a href="${loadLink}">Update</a><br>
                    </td>

                </tr>

            </c:forEach>
            <tr>

                <h1>Orders list</h1>
            </tr>


        </table>
        <a role="button" href="${root}/admin/listProducts" class="btn btn-default">Back to Product List</a>
    </div>
</div>

</body>
</html>
