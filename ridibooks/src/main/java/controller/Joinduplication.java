package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;

@WebServlet("/join/duplication")
public class Joinduplication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		// 데이터 가져옴
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
		String pwCheck = request.getParameter("pwdCheck");
		String email = request.getParameter("mail");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		String sex = request.getParameter("gender");

		if (id != null && pw != null && pwCheck != null && email != null && name != null) {
			// 공백 제거
			id = id.trim();
			pw = pw.trim();
			pwCheck = pwCheck.trim();
			email = email.trim();
			name = name.trim();

			// 중간에 들어가는 공백 제거
			id = id.replace(" ", "");
			pw = pw.replace(" ", "");
			pwCheck = pwCheck.replace(" ", "");
			email = email.replace(" ", "");
			name = name.replace(" ", "");
		}

		if (year == null) {
			year = "0";
		}
		
		if (sex == null) {
			sex = null;
		}

		// DTO에 데이터 저장
		Member memberDTO = new Member();
		memberDTO.setId(id);
		memberDTO.setPw(pw);
		memberDTO.setPwCheck(pwCheck);
		memberDTO.setEmail(email);
		memberDTO.setName(name);
		memberDTO.setYear(year);
		memberDTO.setSex(sex);

		RequestDispatcher rd = request.getRequestDispatcher("/join/condition");
		rd.forward(request, response);
	}
}
