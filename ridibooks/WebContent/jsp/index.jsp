<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<title>메인</title>
<link rel="stylesheet" href="../css/index.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
</head>
<body>
	<div class="container">

	<%@ include file="../header/header.jsp"%>
	
	<%@ include file="../main/menu.jsp" %>
	
	<%@ include file="../Slide/mainSlide.jsp" %>
	
	<%@ include file="../main/icon.jsp" %>
	
	<%@ include file="../Slide/newSlide.jsp" %>
	
	<%@ include file="../main/realTimeBook.jsp" %>
	
	<%@ include file="../Slide/todaySlide.jsp" %>
	
	<%@ include file="../main/bestseller.jsp" %>
	
	<%@ include file="../Slide/weeklyNewSlide.jsp" %>
	
	<%@ include file="../main/instaBook.jsp" %>

	<%@ include file="../footer/footer.jsp"%>

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
		
		
		function search() {
			
		}
	</script>
</body>
</html>
