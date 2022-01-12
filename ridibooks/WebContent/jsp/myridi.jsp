<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>마이리디</title>
    <link rel="stylesheet" href="../css/myridi.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="container">
    
        <%@ include file="header.jsp" %>
        
        <div class="body">
          <div class="sidebar">
            <nav>
              <ul class="nav-title">
                <li class="bigTitle"><h2>마이리디</h2></li>
                <li class="active">
                  <h4><i class="fas fa-home"></i> 마이리디 홈</h4>
                </li>
                <li>
                  <h4><i class="fas fa-book-open"></i> 책</h4>
                  <ul class="nav-list">
                    <li><a href="#"> 선호작품</a></li>
                    <li><a href="#"> 최근 조회한 작품</a></li>
                    <li><a href="#"> 위시리스트</a></li>
                    <li><a href="#"> 독서노트</a></li>
                    <li><a href="#"> 신간알림</a></li>
                    <li><a href="#"> 이벤트 알림 설정</a></li>
                  </ul>
                </li>
                <li>
                  <h4><i class="fas fa-credit-card"></i> 구매/혜택</h4>
                  <ul class="nav-list">
                    <li><a href="#">결제 내역</a></li>
                    <li><a href="#">리디캐시</a></li>
                    <li><a href="#">리디포인트</a></li>
                    <li><a href="#">쿠폰</a></li>
                  </ul>
                </li>
                <li>
                  <h4><i class="fas fa-user"></i> 개인</h4>
                  <ul class="nav-list">
                    <li><a href="#">1:1 문의</a></li>
                    <li><a href="#">내 기기 관리</a></li>
                    <li><a href="#">내 리뷰 관리</a></li>
                    <li><a href="#">정보 변경</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
          <div class="section">
            <section>
              <div class="my-ridi">
                <div class="myid-wrapper">
                  <div class="myid">
                    <h4>******</h4>
                    <p>******@naver.com</p>
                  </div>
                  <button type="button" class="logout" name="logout" onclick="location.href='/logout'">로그아웃</button>
                </div>
                <div class="myinfo-wrapper">
                  <ul>
                    <li>
                      <i class="fas fa-coins"></i>
                      <p>리디캐시</p>
                      <h4>0<span>원</span></h4>
                      <p class="smalltxt">리디캐시 충전 <span>>></span></p>
                    </li>
                    <li>
                      <i class="fab fa-product-hunt"></i>
                      <p>리디포인트</p>
                      <h4>0<span>원</span></h4>
                      <p class="smalltxt">소멸 예정 <strong> 0원</strong></p>
                    </li>
                    <li>
                      <i class="fas fa-percent"></i>
                      <p>쿠폰</p>
                      <h4>0<span>개</span></h4>
                      <p class="smalltxt">쿠폰 등록 <span>>></span></p>
                    </li>
                  </ul>
                </div>
              </div>
                <div class="visited">
                  <div class="visited-header">
                    <h4>최근 조회한 작품</h4>
                    <button type="button">전체보기 <span>>></span></button>
                  </div>
                  <div class="visited-contents">
                    <p>최근 조회한 작품이 없습니다.</p>
                  </div>
                </div>
            </section>
          </div>
>>>>>>> frontend
        </div>

        <%@ include file="footer.jsp" %>
  </body>
</html>
