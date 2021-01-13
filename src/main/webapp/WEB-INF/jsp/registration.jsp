<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<head>
  <meta charset="utf-8">
  <title>Регистрация</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container mt-5 mb-5">
  <div align="center">
    <h2>Регистрация</h2>
  <br><form:form method="POST" modelAttribute="userForm" cssClass="alert alert-info mt-4" autocomplete="off">
    <div>
      <div>
        <form:errors path="username" cssClass="error" element="div"></form:errors>
        <div id="username.errors" class="error">${usernameError}</div>
        <br><input type="text" name="username" class="form-control" placeholder="Придумайте логин">
      </div>
    </div>
    <div>
      <div>
        <br><input type="password" name="password" class="form-control" placeholder="Придумайте пароль">
      </div>
      <div>
        <form:errors path="password" cssClass="error" element="div"></form:errors>
        <div id="username.errors" class="error">${passwordError}</div>
        <br><input type="password" name="passwordConfirm" class="form-control" placeholder="Повторите пароль">
      </div>
    </div>
    <br><button type="submit" class="btn btn-success">Зарегистрироваться</button>
    <p class="message">Уже зарегистрированы? <a href="/login">Войти</a></p>
  </form:form>
</div>
</div>
</body>
<style type="text/css">
  .alert {
    width: 400px;
  }
  button {
    width: 200px;
  }
  .error {
    color: red;
    font-size: 10px;
  }
</style>
</html>