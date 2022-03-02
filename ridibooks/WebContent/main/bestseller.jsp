<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="bestseller">
	<section>
		<a href="#"><p>베스트 셀러 ></p></a>
		<div class="realTimeBookList-wrapper">
			<c:forEach var="i" begin="0" end="2">
				<c:set var="num" value="${num+2 }" />
				<div class="realTimeBookList">
					<c:forEach var="j" begin="0" end="2">
						<c:set var="todaynum" value="${todaynum+1 }" />
						<ul>
							<li>
								<a href="/infomation?num=${best[i].value }"><img src="${best[todaynum-1].img }"></a>
								<strong>${todaynum }</strong>
								<div class="bookInfo">
									<a href="/infomation?num=${best[i].value }"><p>${best[todaynum-1].name }</p></a>
									<a href="/infomation?num=${best[i].value }"><span>${best[todaynum-1].publisher }</span></a>
								</div>
							</li>
						</ul>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
	</section>
</div>