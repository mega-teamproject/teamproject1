<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="newSlide">
	<section>
		<h4>집 앞 서점에 방금 나온 신간!</h4>
		<div class="slider1">
			<c:forEach var="i" begin="0" end="11">
				<div>
					<a href="/infomation?num=${newBook[i].value }">
						<img src="${newBook[i].img }">
						<span>${newBook[i].name }</span><br>
						${newBook[i].publisher }
					</a>
				</div>
			</c:forEach>
		</div>
	</section>
</div>