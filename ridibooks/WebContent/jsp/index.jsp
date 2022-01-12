<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>메인</title>
    <link rel="stylesheet" href="../css/index.css" />
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
      
      <div class="menu">
        <nav>
          <ul>
            <li>
              <a href="#"><i class="fas fa-bars"></i></a>
            </li>
            <li><a href="index.jsp" class="bluetxt">일반</a></li>
            <li><a href="#">로맨스</a></li>
            <li><a href="#">판타지</a></li>
            <li><a href="#">만화</a></li>
            <li><a href="#">BL</a></li>
          </ul>
        </nav>
      </div>
      <div class="mainSlide">
        <div class="item">
          <a href="#"><img src="../images/mainslide1.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide2.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide3.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide4.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide5.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide6.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide7.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide8.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href=#""><img src="../images/mainslide9.jpg" alt="" /></a>
        </div>
        <div class="item">
          <a href="#"><img src="../images/mainslide10.jpg" alt="" /></a>
        </div>
      </div>
      <div class="icons">
        <ul>
          <div>
            <li id="color1">
              <a href="#"><img src="../images/+new.png" /></a>
            </li>
            <!-- <span>신간</span> -->
          </div>
          <div>
            <li id="color2">
              <a href="#"><img src="../images/+gift.png" /></a>
            </li>
            <!-- <span>이벤트</span> -->
          </div>
          <div>
            <li id="color3">
              <a href="#"><img src="../images/+best.png" /></a>
            </li>
            <!-- <span>베스트셀러</span> -->
          </div>
          <div>
            <li id="color4">
              <a href="#"><img src="../images/+rent.png" /></a>
            </li>
            <!-- <span>대여전</span> -->
          </div>
          <div>
            <li id="color5">
              <a href="#"><img src="../images/+sale.png" /></a>
            </li>
            <!-- <span>지금<br>인기세트</span> -->
          </div>
          <div>
            <li id="color6">
              <a href="#"><img src="../images/+calendar.png" /></a>
            </li>
            <!-- <span>신간<br>캘린더</span> -->
          </div>
          <div>
            <li id="color7">
              <a href="#"><img src="../images/+roadsign.png" /></a>
            </li>
            <!-- <span>일반<br>혜택지도</span> -->
          </div>
          <div>
            <li id="color8">
              <a href="#"><img src="../images/+coupon.png" /></a>
            </li>
            <!-- <span>위클리<br>쿠폰</span> -->
          </div>
          <div>
            <li id="color9">
              <a href="#"><img src="../images/+paperpro.png" /></a>
            </li>
            <!-- <span>리디페이퍼</span> -->
          </div>
        </ul>
      </div>
      <div class="newSlide">
        <section>
          <h4>집 앞 서점에 방금 나온 신간!</h4>
          <div class="newslide_wrapper">
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/저주받은아이L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/웰씽킹L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/마법사의돌L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
          </div>
        </section>
      </div>
      <div class="realTimeBook">
        <section>
          <div class="clock">
            <i class="fas fa-clock"></i>
            <span>00시 01분</span>
          </div>
          <h4>사람들이 지금 많이 읽고 있는 책</h4>
          <div class="realTimeBookList-wrapper">
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </section>
      </div>
      <div class="todaySlide">
        <section>
          <h4>오늘 리디의 발견</h4>
          <div class="newslide_wrapper">
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/저주받은아이L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/웰씽킹L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/마법사의돌L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
          </div>
        </section>
      </div>
      <div class="bestseller">
        <section>
          <h4>베스트 셀러 > </h4>
          <div class="realTimeBookList-wrapper">
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="realTimeBookList">
              <ul>
                <li>
                  <a href="#"><img src="../images/신비한동물사전L.webp"></a>
                  <strong>1</strong>
                  <div class="bookInfo">
                    <p>신비한 동물사전</p>
                    <span>조앤.K.롤링</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/신부이태석L.webp"></a>
                  <strong>2</strong>
                  <div class="bookInfo">
                    <p>신부 이태석</p>
                    <span>이충렬</span>
                  </div>
                </li>
                <li>
                  <a href="#"><img src="../images/슈퍼석세스L.webp"></a>
                  <strong>3</strong>
                  <div class="bookInfo">
                    <p>슈퍼 석세스</p>
                    <span>댄 페냐</span>
                  </div>
                </li>
              </ul>
            </div>
        </section>
      </div>
      <div class="weeklyNewSlide"></div>
      <div class="instaBook">
        <section>
          <h4>리디북스토어 인스타그램 추천도서 > </h4>
          <div class="newslide_wrapper">
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp"></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/저주받은아이L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/웰씽킹L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신비한동물사전L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/신부이태석L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/슈퍼석세스L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/마법사의돌L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
            <div class="newslide_book"><a href="#"><img src="../images/듄1L.webp" /></a></div>
          </div>
        </section>
      </div>
      
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
