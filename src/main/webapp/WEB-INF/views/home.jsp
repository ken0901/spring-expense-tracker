<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expense Home Page</title>
    </head>
    <body>
        <h1>Expense Tracker</h1>

        <a href="${contextRoot}/expense">Add Expense</a>

        <c:forEach var="expense" items="${expenses}">
            <div>
                <h3>${expense.expenseName}</h3>
                <p>&dollar; ${expense.amount}</p>
                <a href="${contextRoot}/expense/${expense.id}">Edit</a>
            </div>
        </c:forEach>
    </body>
</html>