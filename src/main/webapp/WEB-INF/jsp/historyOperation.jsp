<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<head>
    <title>История операций</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class = "header">
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Банк</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="/">Главная</a>
            <a class="p-2 text-dark" href="/personalAccount">Личный кабинет</a>
            <a class="p-2 text-dark" href="#">Переводы</a>
            <a class="p-2 text-dark" href="/history">История операций</a>
            <a class="p-2 text-dark" href="/profileEdit">Редактирование профиля</a>
            <a class="p-2 text-dark" href="/logout">Выйти</a>
        </nav>
    </div>
</div>
<div align="center">
    <h1>История операций</h1>
</div>
<div class = "container mt-5" >
    <c:forEach var="el" items="${history}">
        <div class = "alert alert-info mt-2">
            <h3>${el.operation}</h3>
            <p>Сумма: ${el.amount} руб</p>
            <p>Дата: ${el.date}</p>
            <p>Счёт отправителя: ${el.accountSenders}</p>
            <p>Счёт получателя: ${el.accountRecipients}</p>
        </div>
    </c:forEach>
</div>
<div class="footer">
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1"><ya-tr-span data-index="47-0" data-value="© 2020 Company Name" data-translation="© 2020 Название Компании" data-type="trSpan">© 2020 Название Компании</ya-tr-span></p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#"><ya-tr-span data-index="48-0" data-value="Privacy" data-translation="Конфиденциальность" data-type="trSpan">Конфиденциальность</ya-tr-span></a></li>
            <li class="list-inline-item"><a href="#"><ya-tr-span data-index="49-0" data-value="Terms" data-translation="Условия" data-type="trSpan">Условия</ya-tr-span></a></li>
            <li class="list-inline-item"><a href="#"><ya-tr-span data-index="50-0" data-value="Support" data-translation="Поддержка" data-type="trSpan">Поддержка</ya-tr-span></a></li>
        </ul>
    </footer>
</div>
</body>
</html>