<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="../css/findId.css" />
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
      <div class="alert alert1">
        <div class="text">
          <i class="fas fa-exclamation-circle"></i>
          <span> 이메일을 입력해 주세요.</span>
        </div>
        <div class="exit" onclick="exit()">
          <i class="fas fa-window-close"></i>
        </div>
      </div>
      <div class="alert alert2">
        <div class="text">
          <i class="fas fa-exclamation-circle"></i>
          <span> 올바른 이메일 형식이 아닙니다.</span>
        </div>
        <div class="exit" onclick="exit()">
          <i class="fas fa-window-close"></i>
        </div>
      </div>
      <form action="/findId" method="POST">
      <div class="findId">
        <label for="email">아이디 찾기</label>
        <input type="email" name="email" id="email" placeholder="이메일 주소" />
        <button type="button" onclick="find()">찾기</button>
        <div class="solution">
          <span>이메일이 기억나지 않으세요?</span>
          <a href="https://help.ridibooks.com/hc/ko/articles/115011977768"
            >해결방법 보러가기 ></a
          >
        </div>
      </div>
      </form>
    </div>

    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script>
      function find() {
        if ($("#email").val() == "") {
          $(".alert1").css("display", "flex");
          setTimeout(() => {
            $(".alert1").fadeOut();
          }, 3000);
        } else {
          location.href = "findId2.jsp";
        }
      }

      function exit() {
        $(".alert").fadeOut();
      }
    </script>
  </body>
</html>
