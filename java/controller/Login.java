package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO memberdao = MemberDAO.getInstance();
		HttpSession session = request.getSession();
		
		// 데이터 가져옴
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int value = memberdao.selectByIdValue(id, pw);
		
		if(memberdao.selectById(id)) {
			if(value != 0) {
				response.setStatus(201);
				System.out.println("로그인 성공");
				session.setAttribute("value", value);
			}else {
				response.setStatus(404);
				System.out.println("비밀번호 틀림");
				response.sendRedirect("/login");
			}
		}else {
			response.setStatus(404);
			System.out.println("아이디 틀림");
			response.sendRedirect("/login");
		}
	}
}