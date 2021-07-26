<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
    <style>
        body {
            display: block;
            overflow-x: hidden;
            background-color: #FFFAFA;

        }

        nav {
            background-color: #69c6ba;
        }

        button {
            margin-bottom: 15px;
            margin-left: 10px;
            border-radius: 3px !important;

        }


        .date-in {

            margin-left: 6px;
        }

        .date-out {

            margin-left: 277px;
        }


        .count-adult {
            margin-left: 5px;
        }

        .count-children {
            margin-left: 78px;
        }

        .count-rooms {
            margin-left: 106px;
        }

        .btn-outline-info {
            color: black;
            border-color: #69c6ba;
            margin-left: 248px;
            margin-top: 13px;
            width: 33.2%;
            font-weight: 500;
        }

        .con-two {
            margin-top: 144px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
            0 10px 10px rgba(0, 0, 0, 0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 480px;


        }

        .in-one {
            margin-top: 0px;

            width: 100%;
        }

        .text-one {
            margin-top: 79px;
            margin-left: 2px;

        }


        .in-two {
            margin-top: 0px;

            width: 100%;
        }

        .in-tree {
            margin-top: 0px;

            width: 100%;
        }

        .img-back {
            margin-left: 13px;
            margin-bottom: 6px;
        }


        .img-back2 {
            margin-left: -386px;
            margin-bottom: 8px;
        }


        .btn-outline-light:hover,
        .btn-outline-light:focus,
        .btn-outline-light:visited {
            background-color: #69c6ba;


        }


        .btn-secondary:hover,
        .btn-secondary:focus,
        .btn-secondary:visited {
            background-color: #69c6ba;


        }

        .btn-secondary {
            color: black;
            background-color: #69c6ba;
            border-color: #ffffff;
            font-weight: 800;
            margin-right: 10px;
        }


        .navbar-brand {

            text-transform: uppercase;
            margin-top: 5px;
            font-size: 24px;
            font-weight: 900;

        }

        .text-top {
            margin-bottom: 5px;

        }

        .input-group {
            position: relative;
            display: flex;
            flex-wrap: wrap;
            align-items: stretch;

        }


        .btn-outline-info:hover,
        .btn-outline-info:focus,
        .btn-outline-info:visited {
            background-color: #69c6ba;

            font-weight: 200;

        }


        .img-back3 {
            margin-left: -159px;
            margin-bottom: -529px;
        }

        .img-back4 {
            margin-left: 737px;
            margin-bottom: -529px;
        }

        .user-icon {
            margin-top: -3px;
        }

        .menu-icon {
            margin-left: 2px;
            margin-bottom: 8px;
        }

        .dropdown-menu.show {
            display: block;
            margin-left: 10px;
            margin-bottom: 8px;
        }

        .text-us-menu {
            margin-bottom: 9px;
            margin-left: 13px;
        }


    </style>
    <title>First page</title>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">

            <a class="navbar-brand" href="#">
                <img src="C:\Users\NKol\Downloads\Verstka\img\hotel5.png" alt="" width="65" height="65"
                     class="d-inline-block align-text-top">
                Hotel manager
            </a>

            <form class="d-flex">

                <button type="button" class="btn btn-outline-light">Зарегистрировать свой объект</button>
                <button type="button" class="btn btn-outline-light">Зарегистрироваться</button>
                <button type="button" class="btn btn-outline-light">Войти в аккаунт</button>

            </form>
        </div>
        </div>
    </nav>
</header>


<div class="container-fluid con-two">

    <!--	<img src="C:\Users\NKol\Downloads\Verstka\img\hotel2.png" alt="" width="500" height="500"class="img-back3" >
        <img src="C:\Users\NKol\Downloads\Verstka\img\hotel2.png" alt="" width="500" height="500"class="img-back4" >
    -->


    <form class="enter">
        <div class="text-one">
            <h6>
                <label class="country">Выберите страну</label>

            </h6>
        </div>

        <div class="input-group mb-3 in-one">
            <input name="destination" type="text" class="form-control form-one" id="inputCity"
                   placeholder="Куда вы хотите поехать?">
        </div>

        <div class="text-two">
            <h6>
                <label class="date-in">Дата заезда</label>
                <label class="date-out">Дата выезда</label>
            </h6>
        </div>

        <div class="input-group mb-3 in-two">
            <input name="destination" type="date" class="form-control form-two" id="inputCity"
                   placeholder="Дата заезда">
            <input name="destination" type="date" class="form-control form-tree" id="inputCity"
                   placeholder="Дата выезда">

        </div>


        <div class="text-two">
            <h6>
                <label class="count-adult">Количество взрослых</label>
                <label class="count-children">Количество детей</label>
                <label class="count-rooms">Количество спальных мест</label>

            </h6>
        </div>


        <div class="input-group mb-3 in-tree">

            <select class="form-select" id="inputGroupSelect01">
                <option selected>Выберите...</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>

            <select class="form-select" id="inputGroupSelect01">
                <option selected>Выберите...</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>

            <select class="form-select" id="inputGroupSelect01">
                <option selected>Выберите...</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
        </div>


        <div>
            <button type="button" class="btn btn-outline-info">Искать...</button>
            <img src="C:\Users\NKol\Downloads\Verstka\img\building.png" alt="" width="50" height="50" class="img-back">
            <img src="C:\Users\NKol\Downloads\Verstka\img\building.png" alt="" width="50" height="50" class="img-back2">
        </div>


    </form>
</div>


</body>
</html>