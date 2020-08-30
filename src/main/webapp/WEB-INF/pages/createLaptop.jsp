<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="custom" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.springboot.hw20.model.helpings.TypeFrame" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Laptop</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel='stylesheet' href='/styles/Laptop.css'>
</head>
<body>
<h1 id="title">Laptop</h1>
<form action="/saveLaptop" method="post">
    <div id="saveLaptop">
        <div class="form-group">
            <label>Model</label>
            <input type="text" class="form-control" name="model" aria-describedby="Help">
            <small id="Help" class="form-text text-muted">We'll never share your model with anyone else.</small>
        </div>
        <div class="form-group">
            <label>Producer</label>
            <input type="text" class="form-control" name="producer">
        </div>
        <div class="form-group">
            <label>Processor</label>
            <input type="text" class="form-control" name="processor">
        </div>
        <div class="form-group">
            <label>Choose memory</label>
            <select class="form-control" name="memory">
                <option>8</option>
                <option>16</option>
                <option>32</option>
                <option>64</option>
                <option>128</option>
                <option>256</option>
                <option>516</option>

            </select>
        </div>
        <div class="was-validated">
            <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" name="used" id="customControlValidation1" required>
                <label class="custom-control-label" for="customControlValidation1">Check this laptop used</label>
                <div class="invalid-feedback">put a tick</div>
            </div>
        </div>
        <div class="was-validated">
            <div class="mb-3">
                <select class="custom-select" name="typeFrame" required>
                    <option value="">Choose type frame laptop...</option>
                    <option value="<%=TypeFrame.METAL%>">METAL</option>
                    <option value="<%=TypeFrame.PLASTIC%>">PLASTIC</option>
                </select>
                <div class="invalid-feedback">select frame</div>
            </div>
        </div>
        <div class="form-group">
            <label>Price</label>
            <input type="text" class="form-control" name="price" placeholder="0.00">
        </div>
        <div class="form-group">
            <label>Data</label>
            <input type="datetime-local" class="form-control" name="data">
        </div>
        <div id="submit">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>
</body>
</html>
