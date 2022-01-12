package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Check.RegularExpression;
import dao.MemberDAO;
import dto.Member;

@WebServlet("/findId")
public class FindId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		MemberDAO memberDAO = MemberDAO.getInstance();
		Member memberDTO = new Member();

		RegularExpression check = new RegularExpression();

		String email = request.getParameter("email");
		int value = memberDAO.selectByIdValue(email);
		String id = null;
		
		if (check.mailcheck(email)) {
			if ( value != 0) {
				response.setStatus(201);
				id = memberDAO.selectById(value);
			} else {
				response.setStatus(404);
			}
		}else {
			response.setStatus(400);
		}
		
		memberDTO.setId(id);
	}
}