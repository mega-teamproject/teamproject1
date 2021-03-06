<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>비밀번호 재설정</title>
    <link rel="stylesheet" href="../css/resetpw.css" />
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
          <span> 아이디를 입력해 주세요.</span>
        </div>
        <div class="exit" onclick="exit()">
          <i class="fas fa-window-close"></i>
        </div>
      </div>
      <div class="alert alert2">
        <div class="text">
          <i class="fas fa-exclamation-circle"></i>
          <span> 이메일을 입력해 주세요.</span>
        </div>
        <div class="exit" onclick="exit()">
          <i class="fas fa-window-close"></i>
        </div>
      </div>
      <div class="alert alert3">
        <div class="text">
          <i class="fas fa-exclamation-circle"></i>
          <span> 올바른 이메일 형식이 아닙니다.</span>
        </div>
        <div class="exit" onclick="exit()">
          <i class="fas fa-window-close"></i>
        </div>
      </div>
      <form action="/resetpw" method="POST">
      <div class="findId">
        <label for="email">비밀번호 재설정</label>
        <input type="text" name="id" id="id" placeholder="아이디" />
        <input type="email" name="email" id="email" placeholder="이메일 주소" />
        <button type="submit">찾기</button>
        <div class="solution">
          <p>새 비밀번호를 설정할 수 있도록 이메일로 메시지가 전송됩니다.</p>
          <span>이메일이 기억나지 않으세요?</span>
          <a href="https://help.ridibooks.com/hc/ko/articles/115011977768"
            >해결방법 보러가기 ></a
          >
        </div>
      </div>
      </form>
    </div>
  </body>
</html>
