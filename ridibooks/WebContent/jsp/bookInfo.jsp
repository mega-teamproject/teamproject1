<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>책소개</title>
	<link rel="stylesheet" href="../css/bookInfo.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
</head>
<body>
<div class="container">
	  <%@ include file="../header/header.jsp"%>

      <%@ include file="../main/menu.jsp" %>
      
      <div class="container">
        <section>
          <main>
            <div class="main-wrapper">
              <div class="main-info">
                <div class="main-img">
                  <img src="${info[0].bookimg }" alt="#"style="width: 200px; height: 300px; margin-right: 40px;"/>
                </div>
                <div class="title-shop">
                  <div class="main-title">
                    <p class="classify">
                      <a href="">소설</a>
                      <span class="detail">></span>
                      <a href="">${info[0].category }</a>
                    </p>
                    <div class="bookname" id="bookname" value="${info[0].bookvalue }">
                     <h2>${info[0].bname }</h2>
                    </div>
                    <div class="score">
                      <img src="../images/5fullstars.svg" />
                      <span id="orange">${info[0].bgrade }점</span>
                      <span>(${info[0].review }명)</span>
                    </div>
                    <div class="author">
                      <a href="">${info[0].author }</a> 저<br>
                      <a href="">${info[0].bpublisher }</a> 츨판
                    </div>
                  </div>
                  <div class="main-shop">
                    <div class="buyPrice">
                      <div class="buy"><p>구매</p></div>
                      <div class="price">
                        <div class="value">
                          <p>전자책정가</p>
                          <p><strong><fmt:formatNumber value="${info[0].bprice }" pattern="#,###" />원</strong></p>
                        </div>
                        <div class="value">
                          <p>판매가</p>
                          <p><span><fmt:formatNumber value="${info[0].bprice }" pattern="#,###" />원</span></p>
                        </div>
                      </div>
                    </div>
                    <div class="buyBtn">
                      <button type="button" class="white-btn" id="heart" onclick= "heart()" value="0">
                        <i class="fas fa-heart fa-lg"></i>
                      </button>
                      <button type="button" class="white-btn" id="cart" onclick= "cart()" value="0">
                        <i class="fas fa-shopping-cart fa-lg"></i>
                      </button>
                      <button type="button" class="white-btn">
                        <i class="fas fa-gift fa-lg"></i>
                      </button>
                      <button type="button" class="blue-btn">소장하기</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="sub-info">
                <ul>
                  <li>
                    <p><strong>출간 정보</strong> 2020.03.25. 전자책 출간</p>
                  </li>
                  <li>
                    <p>
                      <strong>파일 정보</strong>
                      EPUB | 3.6MB | 약 20.2만 자
                    </p>
                  </li>
                  <li>
                    <p>
                      <strong>ISBN </strong>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      9781781106303
                    </p>
                  </li>
                </ul>
                <ul>
                  <li>
                    <p>
                      <strong>듣기 기능</strong>
                      <i class="fas fa-headphones"></i> 듣기 가능
                    </p>
                  </li>
                  <li>
                    <p>
                      <strong>지원 기기</strong>
                      <span><i class="far fa-square"></i> PAPER </span>&nbsp
                      <span><i class="fab fa-apple"></i> iOS</span>&nbsp
                      <span><i class="fab fa-android"></i> Android</span>&nbsp
                      <span><i class="fab fa-windows"></i> PC</span>&nbsp
                      <span><i class="fas fa-times-circle"></i> Mac</span>
                    </p>
                  </li>
                </ul>
              </div>
              <div class="book-detail">
                <div class="announce">
                  <h4>[안내]</h4>
                  <p>
                    본 도서(새번역판 또는 개정번역판)는 2020년 4월 30일 여백
                    조정이 불가하던 이슈가 수정되었으며, 2021년 12월 14일 <br />
                    <span></span>
                    기준으로 한국어판 표지가 교체되었습니다. <br />
                    <span></span>
                    * 기존 구매자분들도 재다운로드 받으시면 수정된 파일로
                    이용하실 수 있습니다. <br />
                    <span></span>
                    (단, 재다운로드시 독서노트의 위치가 변경되거나 초기화될 수
                    있으니 유의 부탁드립니다.)
                  </p>
                </div>
                <div class="book-series">
                  <h3>이 책의 시리즈</h3>
                  <ul>
                    <li>
                      <img src="../images/마법사의돌s.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌s.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                    <li>
                      <img src="../images/마법사의돌S.webp" width="40px" />
                      <a href="">
                        개정 번역판 | 해리포터 컴플리트 컬렉션(전 7권)
                        <span><i class="fas fa-chevron-right"></i></span>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="book-intro">
                  <h3>작품 소개</h3>
                  <h4>
                    해리 포터 세대의, 해리 포터 세대를 위한, 해리 포터 세대에
                    의한 새 번역! <br />
                    <span></span>
                    ‘21세기 대표 아이콘’에 걸맞은 완성도 높은 작품으로
                    재탄생하다!
                  </h4>
                  <p>
                    1997년 영국에서 출간된 이래 『해리 포터』 시리즈는 지금까지
                    200개국 이상 80개의 언어로 번역되고 출간되어 5억 부 이상을
                    판매했다. <br />
                    국내에서도 1999년 『해리 포터와 마법사의 돌』의 출간을
                    필두로 지금까지 약 1,500만 부가 판매되었으며, 현재에도
                    독자들에게 변함없는 <br />
                    사랑을 받고 있다. 이 시리즈는 여덟 편의 영화로도 제작되어 전
                    세계 곳곳에서 흥행을 거두었고, 영화와 관련된 새로운 도서가
                    출간되고 테마 <br />
                    파크가 조성되는 등 놀라운 기현상을 빚어냈다.
                    <span class="intro-detail invisible">
                      뿐만 아니라 『해리 포터』 시리즈에서 또 다른 작품들이
                      문화상품으로 파생되어 지금도 꾸준히 독자들을 만나고 있다.
                      ‘해리 포터’의 다음 세대인 자녀들의 이야기를 다룬 『해리
                      포터와 저주 받은 아이』는 시나리오로 출간된 이후 연극으로
                      만들어져 영국을 시작으로 미국, 호주, 독일, 캐나다 등 세계
                      곳곳에서 열띤 호응을 얻으며 공연 중이고, 『해리 포터』의
                      세계관이 확장된 『신비한 동물 사전』 시리즈는 계속해서
                      영화로 제작되고 있다. 이제 『해리 포터』는 소설이라는
                      단순한 문학 장르에 머무르지 않고 ‘21세기를 대표하는 시대의
                      아이콘’으로 불리며 일종의 사회문화 현상으로 받아들여지고
                      있다. 20주년을 맞아 새롭게 출간한 『해리 포터』 시리즈는
                      ‘21세기 고전’이라 불릴 만한 품격에 맞춰 작품의 완성도를
                      높였다. 7권 『해리 포터와 죽음의 성물』로 완간된 기존의
                      『해리 포터』 시리즈는 빈틈없는 소설적 구성과 생생한
                      캐릭터 그리고 마법 세계를 정교하게 묘사하며 풍부한
                      상상력이 돋보이면서도 정밀한 세계관을 구축해 나갔다.
                      하지만 지금까지 출간된 책들은 J.K. 롤링이 펼쳐 나가는
                      판타지 세계의 규모가 어느 정도이며 그 속에 어떠한 소설적
                      장치를 심어 놓았는지 알 수 없는 상태에서 번역 작업이
                      이루어졌다. 또한 1~7편 모두 완결성을 갖추었지만, 시리즈의
                      특성상 편과 편을 이어 주며 작품 전체를 관통하는 서사의
                      개연성과 완결성은 마지막 편이 출간된 이후에나 파악할
                      수밖에 없었다. 그러다 보니 작가가 어느 장면에 복선을 깔아
                      두었고, 어느 장면이 작가가 창조한 세계관을 이해하는 중요한
                      역할을 하는지 의미를 파악하며 번역하기에는 한계가 있었다.
                      이번에 선보이는 『해리 포터』 시리즈에는 J.K. 롤링이 작품
                      속에 이룩해놓은 문학적 성취가 완벽하게 구현되어 있다.
                      복선과 반전을 선사하는 문학적 장치들을 보다 정교하고
                      세련되게 다듬었으며, 인물들 사이의 관계나 그들의 숨겨진
                      비밀 그리고 성격이 도드라지는 말투의 미세한 뉘앙스까지
                      점검했다. 『해리 포터』의 세계에 처음 발을 들여놓는 독자는
                      물론, 그동안 『해리 포터』의 세계를 즐겨 찾아왔던 독자
                      모두에게 완성도 높은 만족과 감동을 선사할 것이다. 1탄
                      《해리포터와 마법사의 돌》 어둠의 마왕 볼드모트에게 부모를
                      잃고 홀로 살아남은 아이, 해리는 안전을 위해 마법사가 아닌
                      사람인 ‘머글’ 페투니아 이모와 버논 이모부 손에 길러지며
                      불우한 어린 시절을 보낸다. 열한 번째 생일날, 해그리드를
                      통해 자신이 마법사라는 사실을 알게 된 해리는 호그와트
                      마법학교에 입학해 헤르미온느 그레인저, 론 위즐리라는
                      친구들과 함께 영생을 주는 마법사의 돌을 찾는 엄청난 모험을
                      시작하게 된다.
                    </span>
                  </p>
                  <button id="unroll1" class="openBtn" type="button">
                    펼쳐보기 <i class="fas fa-chevron-circle-down"></i>
                  </buttonc>
                  <button id="roll1" type="button" class="openBtn invisible">
                    접기 <i class="fas fa-chevron-circle-up"></i>
                  </button>
                </div>
                <div class="author">
                  <h3>저자 프로필</h3>
                  <p>
                    저자
                    <a href="">조앤.K.롤링</a>
                    <span>|</span>
                    번역
                    <a href="">강동혁</a>
                  </p>
                  <div class="author-profile">
                    <a href=""
                      ><h3>조앤.K.롤링</h3>
                      <span>Joan K. Rowling</span></a
                    >
                    <button class="new-alarm" type="button">
                      <i class="fas fa-plus"></i>&nbsp; 작가 신간알림·소식
                    </button>
                    <ul>
                      <li>
                        <span class="intro-title">국적</span>
                        <span class="intro-detail">영국</span>
                      </li>
                      <li>
                        <span class="intro-title">출생</span>
                        <span class="intro-detail">1965년 7월 31일</span>
                      </li>
                      <li>
                        <span class="intro-title">학력</span>
                        <span class="intro-detail">
                          하버드대학교 명예박사
                        </span>
                      </li>
                      <li>
                        <span class="intro-title">경력</span>
                        <span class="intro-detail"
                          >포르투갈 인카운터 영어학교 교사</span
                        >
                      </li>
                      <li>
                        <span class="intro-title">수상</span>
                        <span class="intro-detail"> 2012년 런던시 자유상 </span>
                      </li>
                    </ul>
                    <div class="update">
                      <span>2018. 12. 17. 업데이트 </span>
                      <button type="button">
                        <i class="fas fa-pencil-alt"></i>작가 프로필 수정 요청
                      </button>
                    </div>
                  </div>
                  <div class="main-book">
                    <div class="main-book-nav">
                      <h4>대표 저서</h4>
                      <ul>
                        <li class="main-book-active"><a href="">인기순</a></li>
                        <li><a href="">최신순</a></li>
                        <li><a href="">평점순</a></li>
                      </ul>
                    </div>
                    <ul class="main-book-list">
                      <li>
                        <a href="">
                          <img src="../images/마법사의돌s.webp" alt="" />
                          <h4>개정 번역판 | 해리포터와 마법사의 돌</h4>
                        </a>
                        <img src="../images/5fullstars.svg" width="50px" />
                        <span>534명</span>
                      </li>
                      <li>
                        <a href="">
                          <img src="../images/불의잔s.webp" alt="" />
                          <h4>개정 번역판 | 해리포터와 불의 잔</h4>
                        </a>
                        <img src="../images/5fullstars.svg" width="50px" />
                        <span>534명</span>
                      </li>
                      <li>
                        <a href="">
                          <img src="../images/아즈카반s.webp" alt="" />
                          <h4>개정 번역판 | 해리포터와 아즈카반의 죄수</h4>
                        </a>
                        <img src="../images/5fullstars.svg" width="50px" />
                        <span>534명</span>
                      </li>
                      <li>
                        <a href="">
                          <img src="../images/불사조기사단s.webp" alt="" />
                          <h4>개정 번역판 | 해리포터와 불사조 기사단</h4>
                        </a>
                        <img src="../images/5fullstars.svg" width="50px" />
                        <span>534명</span>
                      </li>
                      <li>
                        <a href="">
                          <img src="../images/비밀의방s.webp" alt="" />
                          <h4>개정 번역판 | 해리포터와 비밀의 방</h4>
                        </a>
                        <img src="../images/5fullstars.svg" width="50px" />
                        <span>534명</span>
                      </li>
                    </ul>
                    <button type="button">출간작 전체보기 ></button>
                  </div>
                  <div class="author-intro">
                    <h3>저자 소개</h3>
                    <p>저자 - J. K. 롤링 (J. K. Rowling)</p>
                    <p>역자 - 강동혁</p>
                  </div>
                  <div class="book-navlist">
                    <h3>목차</h3>
                    <p>
                      1장 살아남은 아이 <br />
                      2장 사라진 유리창 <br />
                      3장 발신자 없는 편지들 <br />
                      4장 숲지기 <br />
                      5장 다이애건 앨리 <br />
                      6장 9와 4분의 3번 승강장에서 떠나는 여행 <br />
                      7장 기숙사 배정 모자 <br />
                      <span class="navlist-detail invisible">
                        8장 마법약 교수 <br />
                        9장 한밤의 결투 <br />
                        10장 핼러윈 <br />
                        11장 퀴디치 <br />
                        12장 소망의 거울 <br />
                        13장 니콜라 플라멜 <br />
                        14장 노르웨이 리지백 노버트 <br />
                        15장 금지된 숲 <br />
                        16장 바닥의 문을 지나서 <br />
                        17장 두 얼굴을 가진 남자
                      </span>
                    </p>
                    <button id="unroll2" class="openBtn" type="button">
                      펼쳐보기 <i class="fas fa-chevron-circle-down"></i>
                    </button>
                    <button id="roll2" type="button" class="openBtn invisible">
                      접기 <i class="fas fa-chevron-circle-up"></i>
                    </button>
                  </div>
                </div>
                <div class="review">
                  <h3>리뷰</h3>
                  <div class="write-review">
                    <div class="assess-result"></div>
                    <div class="assessment"></div>
                  </div>
                  <div class="review-list"></div>
                </div>
                <div class="recommend">
                  <h3>이 책과 함께 둘러본 책</h3>
                  <ul>
                    <li>
                      <a href="">
                        <img src="../images/듄1s.webp" alt="">
                        <p> 듄 시리즈 1권</p>
                      </a>
                      <a href="">프랭크 허버트</a>
                    </li>
                    <li>
                        <a href="">
                        <img src="../images/듄1s.webp" alt="">
                        <p> 듄 시리즈 1권</p>
                      </a>
                      <a href="">프랭크 허버트</a>
                    </li>
                    <li>
                        <a href="">
                        <img src="../images/듄1s.webp" alt="">
                        <p> 듄 시리즈 1권</p>
                      </a>
                      <a href="">프랭크 허버트</a>
                    </li>
                    <li>
                        <a href="">
                        <img src="../images/듄1s.webp" alt="">
                        <p> 듄 시리즈 1권</p>
                      </a>
                      <a href="">프랭크 허버트</a>
                    </li>
                    <li>
                        <a href="">
                        <img src="../images/듄1s.webp" alt="">
                        <p> 듄 시리즈 1권</p>
                      </a>
                      <a href="">프랭크 허버트</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </main>
          <aside>
            <a href="https://ridibooks.com/event/37186">
            <img
              src="../images/side-banner.jpg"
              alt="우리는 같은 편인가요? 자세히보기"
              width="100%"
            />
          </a>
            <div class="best">
              <h4>영미소설 베스트셀러</h4>
              <ul>
                <li>
                  <a href="">
                    <p>
                      <span>1위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>2위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>3위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>4위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>5위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>6위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>7위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>8위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span>9위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <a href="">
                    <p>
                      <span class="last-span">10위</span>
                      개정 번역판 | 해리포터와 마법사의 돌 
                    </p>
                  </a>
                </li>
                <li>
                  <button type="button">
                    더보기 <i class="fas fa-caret-right"></i>
                  </button>
                </li>
              </ul>
            </div>
          </aside>
        </section>
      </div>

      <%@ include file="../footer/footer.jsp" %>
    </div>

    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="../js/bookInfo.js"></script>
</body>
</html>