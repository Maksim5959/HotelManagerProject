<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>

</head>
<body>
<div style="background-color: #ee5a6f" >Такой login или email уже существуют.</div>
<form modelAttribute="user" action="${pageContext.request.contextPath}/register-user" method="get">
    <button>Попробовать еще раз</button>
</form>
<form modelAttribute="user" action="${pageContext.request.contextPath}/" method="get">
    <button>Выйти на главную страницу</button>
</form>

</body>

</html>