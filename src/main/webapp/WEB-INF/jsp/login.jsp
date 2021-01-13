<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Вход в учётную запись</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container mt-5 mb-5">
  <div align="center">
    <h2>Авторизация</h2>
  <br><form method="POST" class="alert alert-info mt-4" action="/login">
      <br><input type="text" name="username" class="form-control" placeholder="Логин">
      <br><input type="password" name="password" class="form-control" placeholder="Пароль">
      <br><button type="submit" class="btn btn-success">Войти</button>
      <br><p class="message">Нет аккаунта? <a href="/registration">Зарегистрируйтесь</a></p>
  </form>
</div>
</div>
</body>
<style type="text/css">
    .alert {
        width: 400px;
    }
    button {
        width: 100px;
    }
</style>
</html>
