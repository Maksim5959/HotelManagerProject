<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
</head>
<body>
<div align="right">
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/register-apartment" method="get">
        <button>Зарегистрировать свой объект</button>
    </form>

    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/register-user" method="get">
        <button>Зарегистрироваться</button>
    </form>

    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/sing-in" method="get">
        <button>Войти</button>
    </form>
</div>
<div align="center">
    <input name="city" type="text" placeholder="Куда вы хотите поехать?">
    <input name="check-in" type="date" placeholder="Дата заезда">
    <input name="check-out" type="date"  placeholder="Дата выезда">

    <select name="adult">
        <option value="">Количество взрослых</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    <select name="children">
        <option value="">Количество детей</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    <select name="rooms">
        <option value="">Количество комнат</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>
    <form modelAttribute="hotel" action="${pageContext.request.contextPath}/hotels" method="post">
        <button>Искать</button>
    </form>
</div>
</body>
</html>