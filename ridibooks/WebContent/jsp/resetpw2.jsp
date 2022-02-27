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
      
      <form action="/resetpw2" method="POST">
      <div class="findId">
        <label for="email">새 비밀번호 설정</label>
        <input type="password" name="pwd" id="pwd" placeholder="새 비밀번호" />
        <input type="password" name="pwd2" id="pwd2" placeholder="새 비밀번호 확인" />
        <div class="solution">
          <h4>비밀번호 변경 시 유의사항</h4>
          <ul>
          	<li class="rule">8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력해주세요.</li>
          	<li class="rule">연속된 3자 이상의 같은 문자는 제한합니다.</li>
          	<li class="rule">ID와 같은 비밀번호는 사용할 수 없습니다.</li>
          </ul>
        </div>
        <button type="submit">확인</button>
      </div>
      </form>
    </div>
  </body>
</html>
