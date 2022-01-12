<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입1</title>
    <link rel="stylesheet" href="../css/join1.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="container">
      <header>
        <h3>
          <a href="index.jsp">RIDIBOOKS</a>
        </h3>
      </header>
      <div class="main">
        <main>
          <img src="../images/회원가입이미지1.webp" />
          <button
            class="submit-login"
            type="button"
            onclick="location.href='join2.jsp'"
          >
            일반 회원가입
          </button>
          <button
            class="submit-join"
            type="button"
            onclick="location.href='login.jsp'"
          >
            로그인
          </button>
          <div class="solution">
            <a href="join3.jsp">
              14세 미만 회원가입
              <i class="fas fa-chevron-circle-right"></i>
            </a>
          </div>
        </main>
      </div>
    </div>
  </body>
</html>
