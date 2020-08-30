<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel='stylesheet' href='/styles/Laptop.css'>
</head>
<body>
<div id="home_main">
    <div id="home">
        <a class="btn btn-outline-secondary" href="/createLaptop" role="button">create laptop</a>
    </div>
    <div id="list_laptop">
        <a class="btn btn-outline-success" href="/findByAll" role="button">find all laptop</a>
    </div>
    <div id="list_laptopProducerDesc">
        <a class="btn btn-outline-warning" href="/findByFilterDesc" role="button">findByFilterDesc</a>
    </div>
    <div id="list_findLaptopByMemory">
        <a class="btn btn-outline-info" href="/findLaptopByMemory" role="button">findLaptopByMemory</a>
    </div>
    <div id="list_findLaptopByUsed">
        <a class="btn btn-outline-primary" href="/findLaptopByUsed" role="button">findLaptopByUsed</a>
    </div>
</div>
</body>
</html>
