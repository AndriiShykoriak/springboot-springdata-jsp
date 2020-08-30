<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>findByFilterDesc</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel='stylesheet' href='/styles/Laptop.css'>
</head>
<body>
<c:forEach items="${findByFilterDesc}" var="item">
    ${item}<br>
</c:forEach>
</body>
</html>
