<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<link rel="stylesheet" href="../css/search.css" />
</head>
<body>
	<%@ include file="../header/header.jsp"%>

	<div>
		<div>
			<div>
				<c:forEach var="i" begin="0" end="23">
				<div class="bookList" id="bookList">
					<div class="img"><img src="${list[i].bookimg}" onclick="click()"></div>
					<div>
						<a><span>${list[i].bname }</span></a>
						<a>${list[i].author}</a>
						<div>
							<p>
								<span>${list[i].bgrade }</span>
								<span>${list[i].review }</span>
							</p>
						</div>
						<div>
							<p>
								<span>${list[i].bpublisher}</span>
								<span>${list[i].category }</span>
							</p>
						</div>
						<p>
							<span>${list[i].total}</span>
						</p>						
						<div>
							<a>
								<p>${list[i].binfomation }</p>
							</a>
						</div>
						<div>
							<span>${list[i].bprice }</span>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<%@ include file="../footer/footer.jsp"%>
	
	<script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/search.js"></script>
</body>
</html>