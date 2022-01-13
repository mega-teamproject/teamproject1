<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
    <%
	Object id = session.getAttribute("id");
	String btn3 = "";
	String btn4 = "";
	String btn5 = "";
	String btn6 = "";

	// 로그인 상태 X
	if(id == null) {
		btn3 = "<li><a href=\"index.jsp\"><i class=\"fas fa-home fa-lg\"></i></a></li>";
		btn4 = "<li><a href=\"login.jsp\"><i class=\"fas fa-bell fa-lg\"></i></a></li>";
		btn5 = "<li><a href=\"login.jsp\"><i  class=\"fas fa-shopping-cart fa-lg\"></i></a></li>";
		btn6 = "<li><a href=\"login.jsp\"><i class=\"far fa-user fa-lg\"></i></a></li>";
	}else {
		// 로그인 상태 O
		btn3 = "<li><a href=\"index.jsp\"><i class=\"fas fa-home fa-lg\"></i></a></li>";
		btn4 = "<li><a href=\"alarm.jsp\"><i class=\"fas fa-bell fa-lg\"></i></a></li>";
		btn5 = "<li><a href=\"cart.jsp\"><i  class=\"fas fa-shopping-cart fa-lg\"></i></a></li>";
		btn6 = "<li><a href=\"myridi.jsp\"><i class=\"far fa-user fa-lg\"></i></a></li>";
	}
%>

<%= btn3 %>
<%= btn4 %>
<%= btn5 %>
<%= btn6 %>