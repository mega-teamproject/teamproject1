<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String Id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>마이리디</title>
    <link rel="stylesheet" href="../css/myridi.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
  </head>
  <body>
    <div class="container">
        <%@ include file="../header/header.jsp" %>
        
        <div class="body">
          <div class="sidebar">
            <nav>
              <ul class="nav-title">
                <li class="bigTitle"><h2>마이리디</h2></li>
                <li class="active"><h4><i class="fas fa-home"></i> 마이리디 홈</h4></li>
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
                    <h4><%= Id %></h4>
                    <p><%= email %></p>
                  </div>
                  <button type="button" class="logout" name="logout" onclick="logout()">로그아웃</button>
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
        </div>

      	<%@ include file="../footer/footer.jsp"%>
        
      </div>
      
      <script src="../js/jquery-3.6.0.min.js"></script>
      <script src="../js/myridi.js"></script>
      <script>
          $(".full-input input").on("click", function() {
              $(".search-list").css("display", "block");
          });

          $(".search-input i").on("click", function() {
              $(".search-list").css("display", "none");
          });
          $(".bg-black").on("click", function() {
              $(".search-list").css("display", "none");
          });
          $(".response input").on("click", function() {
              $(".recent-search").css("display", "block");
          });

          $("html").on("click", function(e){ 
              let $tgPoint = $(e.target);
              let $input = $tgPoint.attr("id");
              let $search = $tgPoint.hasClass('.recent-search');
              if(!$input && !$search) {
                  $(".recent-search").css("display", "none");
              }
          });
      </script>
  </body>
</html>