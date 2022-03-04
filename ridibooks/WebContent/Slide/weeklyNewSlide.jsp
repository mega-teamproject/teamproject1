<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="weeklyNewSlide">
	<section>
		<p>금주의 신간</p>
		<div class="slider1">
			<c:forEach var="i" begin="0" end="11">
				<div>
					<a href="/infomation?num=${newWeek[i].value }"><img src="${newWeek[i].img }">
						<span>${newWeek[i].name }</span><br>
						${newWeek[i].publisher }
					</a>
				</div>
			</c:forEach>
		</div>
	</section>
</div>