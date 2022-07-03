<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<div align="center">
    <table border="1" cellpadding="5" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
        <caption><h2>List of meals</h2></caption>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        <c:forEach var="meal" items="${mealsToList}">
            <tr style="color:${meal.isExcess() ? 'red' : 'green'};">
                <td><c:out value="${meal.getDateTime().format( DateTimeFormatter.ofPattern(\"dd-MM-yyyy HH:MM\"))}"/></td>
                <td><c:out value="${meal.getDescription()}" /></td>
                <td><c:out value="${meal.getCalories()}" /></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>