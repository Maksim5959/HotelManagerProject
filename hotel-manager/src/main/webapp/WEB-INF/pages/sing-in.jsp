<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
</head>
<body>
<div align="center">
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/user-page" method="post">
            <input type="email" placeholder="введите email" oninput="this.className = ''" name="email">
            <input type="password" placeholder="введите пароль" oninput="this.className = ''" name="password">
        <button>Войти</button>
    </form>
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/" method="get">
    <button>На главную</button>
    </form>
</div>
</body>
</html>