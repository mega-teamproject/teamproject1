<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String id = (String) session.getAttribute("id");
	session.removeAttribute("id");
%>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>아이디 확인</title>
    <link rel="stylesheet" href="../css/findId2.css" />
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
      <div class="section">
        <section>
          <h4>회원님의 아이디는 다음과 같습니다.</h4>
          <p id="bluetxt"><%= id %></p>
          <p>개인 정보 보호를 위해 앞 두글자만 보여드립니다.</p>
          <p>전체 아이디는 입력하신 메일 주소로 안내해드렸습니다.</p>
          <button type="button" onclick="location.href='login.jsp'">
            로그인
          </button>
          <div class="solution">
            <a href="resetpw.jsp">
              <span>비밀번호를 잃어버리셨나요?</span>

              비밀번호 재설정
              <i class="fas fa-chevron-circle-right"></i>
            </a>
          </div>
        </section>
      </div>
    </div>
  </body>
</html>
