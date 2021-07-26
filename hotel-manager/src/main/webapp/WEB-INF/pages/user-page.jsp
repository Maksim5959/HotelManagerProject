<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
</head>
<body>
<div>
    <h1> ${userJSP.firstName} ${userJSP.lastName}</h1>
    <h4>${userJSP.email}</h4>
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/" method="get">
        <button>Выйти на главную</button>
    </form>

    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/update-user" method="get">
        <button>Редактировать пользователя</button>
    </form>
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/delete-user" method="get">
        <button>Удалить пользователя</button>
    </form>
</div>
</body>
</html>