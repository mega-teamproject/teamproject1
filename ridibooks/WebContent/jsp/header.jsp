<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="header">
	<header>
		<form action="/booksearch">
		<div class="search">
			<a href="/jsp/index.jsp"><h1>RIDIBOOKS</h1></a> 
			<a href="https://select.ridibooks.com/home"><h1 id="opacity">RIDISelect</h1></a>
			
			<div class="relative response">
              <input id="search_input" type="text" name="q" value = "" class="q" placeholder="제목, 저자, 출판사 검색" />
              <span><i class="fas fa-search"></i> </span>
              <div class="recent-search">
                <p>최근 검색어</p>
                <div class="search-contents">
                  <p>최근 검색어 내역이 없습니다.</p>
                </div>
                <div class="saveBtn">
                  <a href="#">
                    검색어 저장 끄기
                  </a>
                </div>
              </div>
            </div>
		</div>
		</form>
		<div class="joinLogin">
			<div class="joinLogin">
				<%@ include file="headerbtn.jsp" %>
			</div>
		</div>
	</header>
	<div class="search-list">
          <div class="search-input">
            <i class="fas fa-arrow-left"></i>
            <input type="text" name="q" value = "" class="q" onkeypress="if(window.event.keyCode==13){search()}" placeholder="제목, 저자, 출판사 검색" />
            <span><i class="fas fa-search"></i> </span>
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
			<%@ include file="headerbtn2.jsp" %>
		</ul>
	</nav>
</div>