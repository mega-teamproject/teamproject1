<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>insert page title</title>
    <link rel="stylesheet" href="../css/join2.css" />
  </head>
  <body>
    <div class="container">
      <header>
        <h3><a href="index.jsp">RIDIBOOKS</a></h3>
      </header>
      
      <form action="/join/duplication" method="POST">
        <input type="text" class="mt-b" name="id" id="id" placeholder="아이디" value="${Member.id }"/>
        <input type="password" name="pwd" id="pwd" placeholder="비밀번호" value="${Member.pw }"/>
        <input type="password" name="pwdCheck" id="pwdCheck" placeholder="비밀번호 확인" class="mt-b" value="${Member.pwCheck }"/>
        <input type="email" name="mail" id="mail" class="mt-b" placeholder="이메일 주소" value="${Member.email }"/>
        <input type="text" name="name" id="name" class="mt-b" placeholder="이름" value="${Member.name }"/>
        <div class="birth-gender-wrapper">
          <p id="label">선택 입력</p>
          <div class="birth-gender relative">
            <div class="birth">
              <input type="text" name="birthday" onfocus="this.placeholder=''" onblur="this.placeholder='출생년도'" id="birthday" placeholder="출생년도"/>
            </div>
            <div class="gender">
              <input type="checkbox" id="male_box" value="남" />
			  <label for="male_box" id="male-la"></label>
              <span id="male_choice">남</span>

              <input type="checkbox" id="female_box" value="여" />
              <label for="female_box" id="female-la"></label>              
              <span id="female_choice">여</span>
            </div>
          </div>
        </div>
        <div class="terms">
          <div class="allAgree pad">
            <input type="checkbox" name="all" id="all" class="checked" />
            <label for="all">선택 포함 전체 약관 동의</label>
          </div>
          <div class="termAgree pad agree m-l space">
            <div>
              <input type="checkbox" name="check" id="term" class="checked" />
              <label for="term">이용약관 동의(필수)</label>
            </div>
            <a href="https://policy.ridi.com/legal/terms/">약관보기 ></a>
          </div>
          <div class="alarmAgree pad m-l">
            <input type="checkbox" name="check" id="alarm" class="checked" />
            <label for="alarm">이벤트, 혜택 알림 수신 동의(선택)</label>
          </div>
          <div class="infoAgree pad agree m-l space">
            <div>
              <input type="checkbox" name="check" id="info" class="checked" />
              <label for="info">성별, 생년 정보 제공 동의(선택)</label>
            </div>
            <a href="https://policy.ridi.com/legal/provide-gender-and-birth/">내용확인 ></a>
          </div>
          <div class="personalAgree pad agree space">
            <div>
              <input type="checkbox" name="personalInfo" id="personalInfo" />
              <label for="personalInfo">개인 정보 수집 및 이용 동의(필수)</label>
            </div>
            <a href="https://policy.ridi.com/legal/privacy-collect-and-use/">내용확인 ></a>
          </div>
        </div>
        <p class="alert">
          <i class="fas fa-exclamation-circle"></i>
          이용약관, 개인 정보 수집 및 이용에 동의해주세요.
        </p>
        <p class="alert">
          <i class="fas fa-exclamation-circle"></i>
          이용약관에 동의해주세요.
        </p>
        <p class="alert">
          <i class="fas fa-exclamation-circle"></i>
          개인 정보 수집 및 이용에 동의해주세요.
        </p>
        <div class="complete">
          <button class="submit-login" type="submit">회원가입 완료</button>
        </div>
      </form>
    </div>
    
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/join2.js"></script>
  </body>
</html>
