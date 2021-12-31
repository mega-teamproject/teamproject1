package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.Member;

@WebServlet("/joinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwdCheck");
		String email = request.getParameter("mail");
		String name = request.getParameter("name");
		int year = Integer.parseInt(request.getParameter("year"));
		String sex = request.getParameter("gender");
		
		Member memberDTO = new Member();
		memberDTO.setId(id);
		memberDTO.setPw(pwd);
		memberDTO.setPwCheck(pwdCheck);
		memberDTO.setEmail(email);
		memberDTO.setName(name);
		memberDTO.setYear(year);
		memberDTO.setSex(sex);
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		int su = memberDAO.insert(memberDTO);
	}

}
