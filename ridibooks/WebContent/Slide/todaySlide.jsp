<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="todaySlide">
	<section>
		<p>오늘, 리디의 발견</p>
		<div class="slider2">
			<c:forEach var="i" begin="0" end="11">
				<div>
					<a href="/infomation?num=${today[i].value }"><img src="${today[i].img }">${today[i].name }</a>
				</div>
			</c:forEach>
		</div>
	</section>
</div>