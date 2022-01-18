package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

@WebServlet("/resetpw")
public class ResetPw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO memberdao = MemberDAO.getInstance();
		
		// 데이터 가져옴
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		
		if(memberdao.selectByexist(id)) {
			if(memberdao.selectByexist(email)) {
				System.out.println("비밀번호 변경 페이지로 이동");
//				response.sendRedirect("");					// 새로운 비밀번호 입력하고 변경하는 페이지 URL ( 아직 미정 )
			}else {
				System.out.println("이메일 재확인");
				response.sendRedirect("/jsp/resetpw.jsp");
			}
		}else {
			System.out.println("아이디 재확인");
			response.sendRedirect("/jsp/resetpw.jsp");
		}
	}
}