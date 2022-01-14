<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>insert page title</title>
    <link rel="stylesheet" href="../css/join2.css" />
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
      <form action="/join/duplication" method="POST">
        <input type="text" class="mt-b" name="id" id="id" placeholder="아이디" />
        <input type="password" name="pwd" id="pwd" placeholder="비밀번호" />
        <input
          type="password"
          name="pwdCheck"
          id="pwdCheck"
          placeholder="비밀번호 확인"
          class="mt-b"
        />
        <input
          type="email"
          name="mail"
          id="mail"
          class="mt-b"
          placeholder="이메일 주소"
        />
        <input
          type="text"
          name="name"
          id="name"
          class="mt-b"
          placeholder="이름"
        />
        <div class="birth&gender mt-b">
          <label for="gender">선택 입력</label> <br />
          <input type="text" name="year" id="year" placeholder="출생년도" />
          <input type="radio" name="gender" id="m" value="남" />
          <input type="radio" name="gender" id="f" value="여" />
        </div>
        <div class="terms">
          <div class="allAgree agree">
            <input type="checkbox" name="all" id="all" />
            <h4>선택 포함 전체 약관 동의</h4>
          </div>
          <div class="termAgree agree m-l space">
            <input type="checkbox" name="term" id="term" />
            <p>이용약관 동의(필수)</p>
            <a href="#">약관보기 ></a>
          </div>
          <div class="alarmAgree agree m-l">
            <input type="checkbox" name="alarm" id="alarm" />
            <p>이벤트, 혜택 알림 수신 동의(선택)</p>
          </div>
          <div class="infoAgree agree m-l space">
            <input type="checkbox" name="info" id="info" />
            <p>성별, 생년 정보 제공 동의(선택)</p>
            <a href="#">내용확인 ></a>
          </div>
          <div class="personalAgree agree space">
            <input type="checkbox" name="personalInfo" id="personalInfo" />
            <p>개인 정보 수집 및 이용 동의(필수)</p>
            <a href="#">내용확인 ></a>
          </div>
        </div>
        <div class="complete">
          <button
            class="submit-login"
            type="submit"
          >
          <!--             onclick="location.href='join2.jsp'" -->
            회원 가입 완료
          </button>
        </div>
      </form>
    </div>
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/join2.js"></script>
  </body>
</html>
