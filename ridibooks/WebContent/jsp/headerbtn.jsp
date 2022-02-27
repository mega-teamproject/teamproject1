<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// JSTL 을 사용
	
	Object value = session.getAttribute("id");
	String btn1 = "";
	String btn2 = "";

	// 로그인 상태 X
	if(value == null) {
		btn1 = "<button class=\"borderBtn btn\" onclick=\"location.href='join1.jsp'\">회원가입</button>";
		btn2 = "<button class=\"whiteBtn btn\" onclick=\"location.href='login.jsp'\">로그인</button>";
	} else {
		// 로그인 상태 O
		btn1 = "<button class=\"borderBtn btn\" onclick=\"location.href='join1.html'\">캐시충전</button>";
		btn2 = "<button class=\"borderBtn btn\" onclick=\"location.href='mystudy.jsp'\">내서재</button>";
	}
%>

<%= btn1 %>
<%= btn2 %>