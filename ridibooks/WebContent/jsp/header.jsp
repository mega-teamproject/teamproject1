<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="header">
	<header>
		<div class="search">
			<a href="index.jsp"><h1>RIDIBOOKS</h1></a> 
			<a href="https://select.ridibooks.com/home"><h1 id="opacity">RIDISelect</h1></a>
		</div>
		<div class="joinLogin">
			<div class="joinLogin">
				<%@ include file="headerbtn.jsp" %>
			</div>
		</div>
	</header>
	<div class="relative">
		<input type="text" placeholder="제목, 저자, 출판사 검색" /> <span><i
			class="fas fa-search"></i> </span>
	</div>
	<nav>
		<ul>
			<%@ include file="headerbtn2.jsp" %>
		</ul>
	</nav>
</div>