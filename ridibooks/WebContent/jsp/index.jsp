<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>메인</title>
<link rel="stylesheet" href="../css/index.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
</head>
<body>
	<div class="container">

		<%@ include file="header.jsp"%>

		<div class="relative full-input">
			<input type="text" placeholder="제목, 저자, 출판사 검색" /> <span><i
				class="fas fa-search"></i> </span>
		</div>
		<div class="search-list">
			<div class="search-input">
				<i class="fas fa-arrow-left"></i> <input type="text"
					placeholder="제목, 저자, 출판사 검색" /> <span><i
					class="fas fa-search"></i> </span>
			</div>
			<div class="search-wrapper">
				<p>최근 검색어</p>
				<div class="search-result">
					<p>최근 검색어 내역이 없습니다.</p>
				</div>
				<div class="search-save">
					<a href="#">검색어 저장 끄기</a>
				</div>
			</div>
			<div class="bg-black"></div>
		</div>
		<nav>
			<ul>
				<li class="active"><a class="a-active" href="index.jsp"><i
						class="fas fa-home fa-lg"></i><span>홈</span></a></li>
				<li><a href="alarm.jsp"><i class="far fa-bell fa-lg"></i><span>알림</span></a>
				</li>
				<li><a href="cart.jsp"><i
						class="fas fa-shopping-cart fa-lg"></i><span>카트</span></a></li>
				<li><a href="myridi.jsp"><i class="far fa-user fa-lg"></i><span>마이리디</span></a>
				</li>
			</ul>
		</nav>
	</div>
	<div class="menu">
		<nav>
			<ul>
				<li><a href="#"><i class="fas fa-bars"></i></a></li>
				<li><a href="index.jsp" class="bluetxt">일반</a></li>
				<li><a href="#">로맨스</a></li>
				<li><a href="#">판타지</a></li>
				<li><a href="#">만화</a></li>
				<li><a href="#">BL</a></li>
			</ul>
		</nav>
	</div>
	<div class="mainSlide">
		<section class="first-sec">
			<div class="slider">
				<div class="item">
					<a href="#"><img src="../images/mainslide1.jpg" alt="" /></a>
				</div>
				<div class="item active-slide">
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
					<a href="#"><img src="../images/mainslide9.jpg" alt="" /></a>
				</div>
				<div class="item">
					<a href="#"><img src="../images/mainslide10.jpg" alt="" /></a>
				</div>
			</div>
		</section>
	</div>
	<div class="icons">
		<ul>
			<div>
				<li id="color1"><a href="#"><img src="../images/+new.png" /></a>
				</li>
				<!-- <span>신간</span> -->
			</div>
			<div>
				<li id="color2"><a href="#"><img src="../images/+gift.png" /></a>
				</li>
				<!-- <span>이벤트</span> -->
			</div>
			<div>
				<li id="color3"><a href="#"><img src="../images/+best.png" /></a>
				</li>
				<!-- <span>베스트셀러</span> -->
			</div>
			<div>
				<li id="color4"><a href="#"><img src="../images/+rent.png" /></a>
				</li>
				<!-- <span>대여전</span> -->
			</div>
			<div>
				<li id="color5"><a href="#"><img src="../images/+sale.png" /></a>
				</li>
				<!-- <span>지금<br>인기세트</span> -->
			</div>
			<div>
				<li id="color6"><a href="#"><img
						src="../images/+calendar.png" /></a></li>
				<!-- <span>신간<br>캘린더</span> -->
			</div>
			<div>
				<li id="color7"><a href="#"><img
						src="../images/+roadsign.png" /></a></li>
				<!-- <span>일반<br>혜택지도</span> -->
			</div>
			<div>
				<li id="color8"><a href="#"><img
						src="../images/+coupon.png" /></a></li>
				<!-- <span>위클리<br>쿠폰</span> -->
			</div>
			<div>
				<li id="color9"><a href="#"><img
						src="../images/+paperpro.png" /></a></li>
				<!-- <span>리디페이퍼</span> -->
			</div>
		</ul>
	</div>
	<div class="newSlide">
		<section>
			<h4>집 앞 서점에 방금 나온 신간!</h4>
			<div class="slider1">
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp"><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp"><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp"><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/저주받은아이L.webp" /><span>해리포터와<br>저주받은
							아이
					</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/웰씽킹L.webp" /><span>웰씽킹</span><br>켈리
						최</a>
				</div>
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp" /><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp" /><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp" /><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/마법사의돌L.webp" /><span>마법사의
							돌</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
			</div>
		</section>
	</div>
	<div class="realTimeBook">
		<section>
			<div class="clock">
				<i class="fas fa-clock"></i> <span id="real-time">00시 01분</span>
			</div>
			<p class="realTimeTitle">사람들이 지금 많이 읽고 있는 책</p>
			<div class="realTimeBookList-wrapper">
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
			</div>
		</section>
	</div>
	<div class="todaySlide">
		<section>
			<p>오늘, 리디의 발견</p>
			<div class="slider2">
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp">신비한 동물사전</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp">신부 이태석</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp">슈퍼 석세스</a>
				</div>
				<div>
					<a href="#"><img src="../images/저주받은아이L.webp" />해리포터와<br>저주받은
						아이</a>
				</div>
				<div>
					<a href="#"><img src="../images/웰씽킹L.webp" />웰씽킹</a>
				</div>
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp" />신비한 동물사전</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp" />신부 이태석</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp" />슈퍼 석세스</a>
				</div>
				<div>
					<a href="#"><img src="../images/마법사의돌L.webp" />해리포터와<br>마법사의
						돌</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" />듄 1</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" />듄 1</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" />듄 1</a>
				</div>
			</div>
		</section>
	</div>
	<div class="bestseller">
		<section>
			<a href="#"><p>베스트 셀러 ></p></a>
			<div class="realTimeBookList-wrapper">
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
				<div class="realTimeBookList">
					<ul>
						<li><a href="#"><img src="../images/신비한동물사전L.webp"></a>
							<strong>1</strong>
							<div class="bookInfo">
								<a href="#"><p>신비한 동물사전</p></a> <a href="#"><span>조앤.K.롤링</span></a>
							</div></li>
						<li><a href="#"><img src="../images/신부이태석L.webp"></a> <strong>2</strong>
							<div class="bookInfo">
								<a href="#"><p>신부 이태석</p></a> <a href="#"><span>이충렬</span></a>
							</div></li>
						<li><a href="#"><img src="../images/슈퍼석세스L.webp"></a> <strong>3</strong>
							<div class="bookInfo noborder">
								<a href="#"><p>슈퍼 석세스</p></a> <a href="#"><span>댄 페냐</span></a>
							</div></li>
					</ul>
				</div>
		</section>
	</div>
	<div class="weeklyNewSlide">
		<section>
			<p>금주의 신간</p>
			<div class="slider1">
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp"><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp"><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp"><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/저주받은아이L.webp" /><span>해리포터와<br>저주받은
							아이
					</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/웰씽킹L.webp" /><span>웰씽킹</span><br>켈리
						최</a>
				</div>
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp" /><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp" /><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp" /><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/마법사의돌L.webp" /><span>마법사의
							돌</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
			</div>
		</section>
	</div>
	<div class="instaBook">
		<section>
			<a href="#"><p>리디북스토어 인스타그램 추천도서 ></p></a>
			<div class="slider1">
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp"><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp"><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp"><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/저주받은아이L.webp" /><span>해리포터와<br>저주받은
							아이
					</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/웰씽킹L.webp" /><span>웰씽킹</span><br>켈리
						최</a>
				</div>
				<div>
					<a href="#"><img src="../images/신비한동물사전L.webp" /><span>신비한
							동물사전</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/신부이태석L.webp" /><span>신부
							이태석</span><br>이충렬</a>
				</div>
				<div>
					<a href="#"><img src="../images/슈퍼석세스L.webp" /><span>슈퍼
							석세스</span><br>댄 페냐</a>
				</div>
				<div>
					<a href="#"><img src="../images/마법사의돌L.webp" /><span>마법사의
							돌</span><br>조앤.K.롤링</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
				<div>
					<a href="#"><img src="../images/듄1L.webp" /><span>듄 1</span><br>프랭크
						허버트</a>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="footer.jsp"%>

	<script src="../js/jquery-3.6.0.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script src="../js/index.js"></script>

	<script>
		$(document).ready(function() {
			$('.slider').bxSlider({
				mode : 'horizontal',// 가로 방향 수평 슬라이드 
				speed : 500, // 이동 속도를 설정 
				pager : false, // 현재 위치 페이징 표시 여부 설정 
				moveSlides : 1, // 슬라이드 이동시 개수 
				slideWidth : 1200, // 슬라이드 너비 
				minSlides : 3, // 최소 노출 개수 
				maxSlides : 3, // 최대 노출 개수 
				slideMargin : 15, // 슬라이드간의 간격 
				auto : true, // 자동 실행 여부 
				autoHover : true
			// 마우스 호버시 정지 여부
			});
		});
		$(document).ready(function() {
			$('.slider1').bxSlider({
				mode : 'horizontal',// 가로 방향 수평 슬라이드 
				speed : 500, // 이동 속도를 설정 
				pager : false, // 현재 위치 페이징 표시 여부 설정 
				moveSlides : 6, // 슬라이드 이동시 개수 
				slideWidth : 200, // 슬라이드 너비 
				minSlides : 6, // 최소 노출 개수 
				maxSlides : 6, // 최대 노출 개수 
				slideMargin : 15, // 슬라이드간의 간격 
			});
		});
		$(document).ready(function() {
			$('.slider2').bxSlider({
				mode : 'horizontal',// 가로 방향 수평 슬라이드 
				speed : 500, // 이동 속도를 설정 
				pager : false, // 현재 위치 페이징 표시 여부 설정 
				moveSlides : 6, // 슬라이드 이동시 개수 
				slideWidth : 200, // 슬라이드 너비 
				minSlides : 6, // 최소 노출 개수 
				maxSlides : 6, // 최대 노출 개수 
				slideMargin : 15, // 슬라이드간의 간격 
			});
		});
		
	</script>
</body>
</html>
