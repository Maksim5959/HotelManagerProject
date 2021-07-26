<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 21.07.2021
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<h1> Введите новые данные пользователя :</h1>

<form modelAttribute="userJSP" action="${pageContext.request.contextPath}/add-update-user" method="post">


    <input type="email" placeholder="Email" oninput="this.className = ''" name="email"/>
    <input type="text" placeholder="Login" oninput="this.className = ''" name="login"/>
    <input type="password" placeholder="Password" oninput="this.className = ''" name="password"/>
    <input type="text" placeholder="First name" oninput="this.className = ''" name="firstName"/>
    <input type="text" placeholder="Last name" oninput="this.className = ''" name="lastName"/>

    <button>Редактировать</button>
</form>
</body>
</html>
