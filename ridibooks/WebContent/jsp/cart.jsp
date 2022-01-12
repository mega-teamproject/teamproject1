<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
  <head>
    <meta charset="UTF-8" />
    <title>장바구니</title>
    <link rel="stylesheet" href="../css/cart.css" />
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
       
        <div class="section">
            <section>
                <h3>카트</h3>
                <div class="cart">
                    <div class="header">
                        <ul>
                            <li class="active"><p>구매 가능</p></li>
                            <li><p>대여 가능</p></li>
                        </ul>
                    </div>
                    <div class="body">
                        <i class="fas fa-shopping-cart fa-4x"></i>
                        <p>카트에 담긴 책이 없습니다.</p>
                    </div>
                </div>
            </section>
        </div>

        <%@ include file="footer.jsp" %>
  </body>
</html>
