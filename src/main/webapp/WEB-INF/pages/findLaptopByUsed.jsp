<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>findLaptopByUsed</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel='stylesheet' href='/styles/Laptop.css'>
</head>
<body>
<c:forEach items="${findLaptopByUsed}" var="item">
    ${item}<br>
</c:forEach>
</body>
</html>
