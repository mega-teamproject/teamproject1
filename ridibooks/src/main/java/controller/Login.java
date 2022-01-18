package controller;

import java.io.IOException;
import java.time.LocalDateTime;

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
		int value = memberdao.selectByIdValue(id, pw, null);
		String email = memberdao.selectByinfo(1, value);
		LocalDateTime loginDate = LocalDateTime.now();
		
		if(memberdao.selectByexist(id)) {
			if(value != 0) {
				response.setStatus(201);
				System.out.println("로그인 성공");
				memberdao.loginupdate(loginDate, value);	// 로그인 날짜 갱신
				session.setAttribute("id", id);				// 세션에 아이디값 저장
				session.setAttribute("email", email); 		// 세션에 이메일값 저장 - 마이리디에서 사용
				response.sendRedirect("/jsp/index.jsp");	// 로그인 성공 시 메인 페이지 이동
			}else {
				response.setStatus(404);
				System.out.println("비밀번호 틀림");
				response.sendRedirect("/jsp/login.jsp");
			}
		}else {
			response.setStatus(404);
			System.out.println("아이디 틀림");
			response.sendRedirect("/jsp/login.jsp");
		}
	}
}