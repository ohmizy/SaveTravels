<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">name</th>
        <th scope="col">vendor</th>
        <th scope="col">amount</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="expense" items="${expenses}">
    <tr>
        <th><a href="/expenses/${expense.id}"><c:out value="${expense.name}"></c:out> </th>
        <td><c:out value="${expense.name}"></c:out> </td>
        <td><c:out value="${expense.vendor}"></c:out></td>
        <td>$<c:out value="${expense.amount}"></c:out></td>
        <td><a href="/expenses/${expense.id}/edit">edit</a><td>
    </td>
    </c:forEach>
    </tbody>
</table>

<h1>New Expense</h1>
<form:form action="/expenses" method="post" modelAttribute="expense">
    <p>
        <form:label path="name">Name</form:label>
        <form:errors path="name"/>
        <form:input path="name"/>
    </p>
    <p>
        <form:label path="vendor">Vendor</form:label>
        <form:errors path="vendor"/>
        <form:input path="vendor"/>
    </p>
    <p>
        <form:label path="amount">Amount</form:label>
        <form:errors path="amount"/>
        <form:textarea path="amount"/>
    </p>
    <p>
        <form:label path="description">Description</form:label>
        <form:errors path="description"/>
        <form:textarea path="description"/>
    </p>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>

