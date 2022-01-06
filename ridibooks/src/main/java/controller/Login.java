package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO memberdao = MemberDAO.getInstance();
		
		// 데이터 가져옴
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
		int value = memberdao.selectByIdValue(id, pw);
		
		if(value == 0 ) {
			response.setStatus(201);
		}else {
			response.setStatus(404);
		}
	}
}