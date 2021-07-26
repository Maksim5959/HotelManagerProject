<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

</head>
<body>
<div>
    <form modelAttribute="userJSP" action="${pageContext.request.contextPath}/add-user" method="post">
        <input type="email" placeholder="Email" oninput="this.className = ''" name="email"/>
        <input type="text" placeholder="Login" oninput="this.className = ''" name="login"/>
        <input type="password" placeholder="Password" oninput="this.className = ''" name="password"/>
        <input type="text" placeholder="First name" oninput="this.className = ''" name="firstName"/>
        <input type="text" placeholder="Last name" oninput="this.className = ''" name="lastName"/>
        <button>Зарегистрироваться</button>
    </form>
    <form modelAttribute="user" action="${pageContext.request.contextPath}/" method="get">
        <button>Выйти на главную страницу</button>
    </form>
</div>
</body>
</html>