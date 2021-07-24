<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>

</head>
<body>
<div style="background-color: #ee5a6f" >Такого пользователя не существует</div>
<form modelAttribute="user" action="${pageContext.request.contextPath}/sing-in" method="get">
    <button>Попробовать войти еще раз</button>
</form>
<form modelAttribute="user" action="${pageContext.request.contextPath}/" method="get">
    <button>Выйти на главную страницу</button>
</form>

</body>

</html>