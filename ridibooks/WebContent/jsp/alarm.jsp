<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>알림</title>
    <link rel="stylesheet" href="../css/alarm.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
  </head>
	<body>
    	<div class="container">
			<%@ include file="header.jsp" %>
	
        	<div class="alarm">
            	<i class="fas fa-bell fa-4x"></i>
            	<p>새로운 알림이 없습니다.</p>
        	</div>

        	<%@ include file="footer.jsp" %>
		</div>
	</body>
</html>
