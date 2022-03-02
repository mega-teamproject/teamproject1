<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="instaBook">
	<section>
		<a href="#"><p>리디북스토어 인스타그램 추천도서 ></p></a>
		<div class="slider1">
			<c:forEach var="i" begin="0" end="11">
				<div>
					<a href="/infomation?num=${insta[i].value }">
						<img src="${insta[i].img }"> 
						<span>${insta[i].name }</span><br>
						${insta[i].publisher } 
					</a>
				</div>
			</c:forEach>
		</div>
	</section>
</div>