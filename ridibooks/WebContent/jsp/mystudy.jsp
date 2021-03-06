<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>내 서재</title>
    <link rel="stylesheet" href="../css/mystudy.css" />
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
        <div class="wrapper">
          <a href="my study.html"><h3>내 서재</h3></a>
          <div class="link">
            <a href="index.html"><h4>RIDIBOOKS</h4></a>
            <a href="https://select.ridibooks.com/home">
              <h4>RIDI<span>Select</span></h4>
            </a>
            <i class="fas fa-cog"></i>
          </div>
        </div>
        <div class="set">
          <ul>
            <li>***** 님</li>
            <li>
              <i class="fas fa-pencil-alt"></i>
              <span>내 서재 의견 보내기</span>
            </li>
            <li>
              <i class="far fa-sticky-note"></i>
              <span>독서노트</span>
            </li>
            <li>
              <i class="far fa-comment-dots"></i>
              <span>내 리뷰 관리</span>
            </li>
            <li>
              <i class="fas fa-download"></i>
              <span>모든 책 목록 다운로드</span>
            </li>
            <li>
              <i class="fas fa-sign-out-alt"></i>
              <span>로그아웃</span>
            </li>
          </ul>
        </div>
        <div class="menu">
          <ul>
            <div>
              <li class="menu_active">모든 책</li>
              <li>책장</li>
              <li>선호 작품</li>
            </div>
            <div class="fake">
              <li></li>
              <li></li>
            </div>
          </ul>
        </div>
      </header>
      <div class="section">
        <section>
          <div class="search">
            <div class="input">
              <input type="text" placeholder="모든 책 검색" />
              <i class="fas fa-search"></i>
            </div>

            <div class="icons">
              <i class="fas fa-bars"></i>
              <i class="far fa-check-circle"></i>
              <i class="fas fa-ellipsis-v"></i>
            </div>
          </div>
          <div class="filter">
            <ul>
              <li>
                <i class="fas fa-check"></i>
                전체
                <span>0</span>
              </li>
              <li>구매 방식 필터</li>
              <li>카테고리 필터</li>
            </ul>
          </div>
          <div class="list">
            <i class="fas fa-book fa-3x"></i>
            <h4>구매한 작품이 없습니다.</h4>
            <p>작품을 구매하면 여기에 표시됩니다.</p>
          </div>
        </section>
      </div>
      <footer>
        <p><i class="far fa-copyright"></i>RIDI Corp.</p>
        <ul>
          <li>고객센터</li>
          <li>이용약관</li>
          <li><strong> 개인 정보 처리 방침</strong></li>
          <li>청소년 보호 정책</li>
          <li>사업자 정보 확인</li>
        </ul>
      </footer>
    </div>
  </body>
</html>
