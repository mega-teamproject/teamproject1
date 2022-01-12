<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>로그인</title>
    <link rel="stylesheet" href="../css/login.css" />
  </head>
  <body>
    <div class="container">
      <header>
        <h3>
          <a href="index.jsp">RIDIBOOKS</a>
        </h3>
      </header>
      <div class="form">
        <form action="/login" method="POST">
          <div class="idPw">
            <input type="text" name="id" id="id" placeholder="아이디" />
            <input type="password" name="pw" id="pw" placeholder="비밀번호" />
            <div class="idPwMenu">
              <div class="checkbox">
                <input type="checkbox" name="check" id="check" />
                <label for="check">로그인 상태 유지</label>
              </div>
              <div class="findIdPw">
                <a href="findId.jsp"><p class="id-border">아이디 찾기</p></a>
                <a href="resetpw.jsp"><p>비밀번호 재설정</p></a>
              </div>
            </div>
          </div>
          <div class="alert alertID">
            <p>! 아이디를 확인해주세요.</p>
          </div>
          <div class="alert alertPW">
            <p id="checkPW">! 비밀번호를 확인해주세요.</p>
          </div>
          <div class="alert alertIDPW">
            <p id="checkIDPW">! 아이디 또는 비밀번호를 확인해주세요.</p>
          </div>
          <div class="submit">
            <button class="submit-login" type="submit">로그인</button>
            <button
              class="submit-join"
              type="button"
              onclick="location.href='join1.jsp'"
            >
              회원가입
            </button>
          </div>
        </form>
      </div>
    </div>

    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script>
      $("form").on("submit", function (e) {
        let idVal = $("#id").val();
        let pwVal = $("#pw").val();

        if (idVal == "" && pwVal == "") {
          e.preventDefault();
          $(".alertIDPW").show();
        } else if (idVal == "") {
          e.preventDefault();
          $(".alertIDPW").hide();
          $(".alertID").show();
        } else if (pwVal == "") {
          e.preventDefault();
          $(".alertIDPW").hide();
          $(".alertID").hide();
          $(".alertPW").show();
        }
      });
    </script>
  </body>
</html>
