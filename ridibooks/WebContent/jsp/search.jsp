<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	int size = (int) request.getAttribute("size");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
</head>
<body>
	<div>
		<div>
			<div>
				<c:forEach var="i" begin="0" end="24">
				<div>
				<img src="${list[i].bookimg}">
				</div>
				<a href="#"> <span>${list[i].bname }</span></a>
				${list[i].author}
				${list[i].bgrade }
				${list[i].review }
				${list[i].bpublisher }
				${list[i].category }
				${list[i].total }
				${list[i].binfomation }
				${list[i].bprice }
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>