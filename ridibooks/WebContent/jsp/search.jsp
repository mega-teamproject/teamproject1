<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<link rel="stylesheet" href="../css/index.css" />
</head>
<body>
	<%@ include file="header.jsp"%>

	<div>
		<div>
			<div>
				<c:forEach var="i" begin="0" end="24">
				<div class="bookList" id="bookList" value="${list[i].bookvalue }">
					<div class="img">
					<img onClick="click()" src="${list[i].bookimg}">
					</div>
					${list[i].bookvalue}
					<a><span onclick="click()">${list[i].bname }</span></a>
					${list[i].author}
					${list[i].bgrade }
					${list[i].review }
					${list[i].bpublisher }
					${list[i].category }
					${list[i].total }
					${list[i].binfomation }
					${list[i].bprice }
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
	
	<script src="../js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="../js/search.js"></script>
</body>
</html>