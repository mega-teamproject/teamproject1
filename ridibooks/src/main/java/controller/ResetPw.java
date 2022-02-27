package service;

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
		MemberDAO memberdao = MemberDAO.getInstance();
		
		// 데이터 가져옴
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		int value = memberdao.selectByIdValue(null, null, email);
		int problem = 0;
		
		if(!memberdao.selectByexist(id) || memberdao.selectBystatus(id) != 0) {
			problem = 1;
		}
		
		if(!memberdao.selectByexist(email) || memberdao.selectBystatus(email) != 0) {
			problem = 1;
		}
		
		if(problem == 0) {
			response.sendError(HttpServletResponse.SC_FOUND);
			request.setAttribute("value", value);
			
			response.sendRedirect("/jsp/resetpw2.jsp");
		} else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			response.sendRedirect("/jsp/resetpw.jsp");
		}
	}
}