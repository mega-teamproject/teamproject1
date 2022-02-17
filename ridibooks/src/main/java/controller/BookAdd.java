package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BookDAO;
import dao.MemberDAO;
import dto.CartWishDTO;

@WebServlet("/bookadd")
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		BookDAO bookdao = new BookDAO();
		MemberDAO memberdao = new MemberDAO();
		
		String email = (String) session.getAttribute("email");
		int heart = Integer.parseInt(request.getParameter("heart"));
		int cart = Integer.parseInt(request.getParameter("cart"));
		int id = memberdao.selectByIdValue(null, null, email);
		int value = 0;
		
		// 위시리스트
		if(heart != 0 || cart == 0) {
			boolean result = bookdao.selectByList(value, heart, id);
			
			// DTO에 책 고유번호와 아이디 고유번호를 저장
			CartWishDTO dto = new CartWishDTO();
			dto.setCbook(heart);
			dto.setCid(id);
			
			if(result) {
				// wishDB에 저장하려는 값이 없으면
				// DTO에 있는 값을 DB에 저장
				bookdao.bookadd(value, dto);
			}else {
				// 값이 있으면
				// 데이터 삭제
				bookdao.bookdelete(value, dto);
			}
		}else {
			// 카트
			value = 1;
			boolean result = bookdao.selectByList(value, cart, id);
			
			// DTO에 책 고유번호와 아이디 고유번호를 저장
			CartWishDTO dto = new CartWishDTO();
			dto.setCbook(cart);
			dto.setCid(id);
			
			if(result) {
				// cartDB에 저장하려는 값이 없으면
				// DTO에 있는 값을 DB에 저장
				bookdao.bookadd(value, dto);
			}else {
				// 값이 있으면
				// 데이터 삭제
				bookdao.bookdelete(value, dto);
			}
		}
		
		response.sendRedirect("/jsp/bookInfo.jsp");
	}
}