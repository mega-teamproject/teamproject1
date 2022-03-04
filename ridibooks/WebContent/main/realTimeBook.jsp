<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="realTimeBook">
	<section>
		<div class="clock">
			<i class="fas fa-clock"></i> <span id="real-time">00시 01분</span>
		</div>
		<p class="realTimeTitle">사람들이 지금 많이 읽고 있는 책</p>
		<div class="realTimeBookList-wrapper">
			<c:forEach var="i" begin="0" end="2">
				<c:set var="num" value="${num+2 }" />
				<div class="realTimeBookList">
					<c:forEach var="j" begin="0" end="2">
						<c:set var="listnum" value="${listnum+1 }" />
						<ul>
							<li>
								<a href="/infomation?num=${now[i].value }"><img src="${now[listnum-1].img }"></a>
								<strong>${listnum }</strong>
								<div class="bookInfo">
									<a href="/infomation?num=${now[i].value }"><p>${now[listnum-1].name }</p></a>
									<a href="/infomation?num=${now[i].value }"><span>${now[listnum-1].publisher }</span></a>
								</div>
							</li>
						</ul>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
	</section>
</div>