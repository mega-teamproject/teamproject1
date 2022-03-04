<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<link rel="stylesheet" href="../css/search.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
</head>
<body>
	<%@ include file="../header/header.jsp"%>

	<div>
		<div>
			<div>
				<c:forEach var="i" begin="0" end="23">
				<div class="bookList" id="bookList">
					<div class="img"><a href="/infomation?num=${list[i].bookvalue }"><img src="${list[i].bookimg}" onError="this.style.visibility='hidden'"></a></div>
					<div>
						<a href="/infomation?num=${list[i].bookvalue }"><span>${list[i].bname }</span></a>
						<div>
							<a href="/infomation?num=${list[i].bookvalue }">${list[i].author}</a>
						</div>
						<div>
							<p>
								<span>${list[i].bgrade }점</span>
								<span>(${list[i].review })</span>
							</p>
						</div>
						<div>
							<p>
								<span>${list[i].bpublisher} | </span>
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
							<span>소장 <fmt:formatNumber value="${list[i].bprice }" pattern="#,###" />원</span>
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