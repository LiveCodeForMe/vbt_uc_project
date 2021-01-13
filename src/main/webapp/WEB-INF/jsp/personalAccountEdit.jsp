<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<head>
    <title th:text="Личный кабинет"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<header th:insert="blocks/header :: header"></header>

<div class="container mt-5 mb-5">
    <div align="center">
        <br>
        <h2>Добавление пользователя</h2>
        <form action="#" th:action="@{/personalAccountAdd}" th:object="${personalAccountAdd}" method="post">
            <input type="text" name="firstName" placeholder="Введите имя" class="form-control"><br>
            <input type="text" name="lastName" placeholder="Введите фамилию" class="form-control"><br>
            <input type="text" name="middleName" placeholder="Введите отчество" class="form-control"><br>
            <input type="text" name="mail" placeholder="Введите электронную почту" class="form-control"><br>
            <input type="text" name="number" placeholder="Введите мобильный телефон" class="form-control"><br>
            <button type="submit" class="btn btn-success">Добавить пользователя</button>
        </form>
        </br>
    </div>
</div>

<div th:insert="blocks/footer :: footer"></div>

</body>
</html>