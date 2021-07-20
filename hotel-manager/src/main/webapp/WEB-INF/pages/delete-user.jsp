<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>


    <title></title>
</head>
<body>
<form modelAttribute="user" action="${pageContext.request.contextPath}/delete-done" method="post">
    <label>
        <input style="background-color: #ee5a6f" type="email" value="email" oninput="this.className = ''" name="email"/>
    </label>
    <label>
        <input type="password" oninput="this.className = ''" name="password"/>
    </label>
    <button>Удалить</button>
</form>
<form modelAttribute="user" action="${pageContext.request.contextPath}/" method="get">
<button>Выйти на главную страницу</button>
</form>
</body>
</html>