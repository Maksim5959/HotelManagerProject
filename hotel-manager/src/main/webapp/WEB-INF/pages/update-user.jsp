<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>

</head>
<body>
<div>

    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/check-user " method="post" >

    <h1>Введите текущие email и пароль:</h1>

        <input  type="email"  placeholder="Email" oninput="this.className = ''" name="email"/>
        <input  type="password"  placeholder="Password" oninput="this.className = ''" name="password"/>
        <button>Продолжить</button>
    </form>

    <form modelAttribute="user" action="${pageContext.request.contextPath}/" method="get">
        <button>Выйти на главную страницу</button>
    </form>
</div>
</body>
</html>


