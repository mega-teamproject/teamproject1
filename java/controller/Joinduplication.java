package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.Member;

@WebServlet("/join/duplication")
public class Joinduplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 데이터 가져옴
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwdCheck");
		String email = request.getParameter("mail");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		String sex = request.getParameter("gender");
		
		if (id != null && pwd != null && pwdCheck != null && email != null && name != null) {
			// 공백 제거
			id = id.trim();
			pwd = pwd.trim();
			pwdCheck = pwdCheck.trim();
			email = email.trim();
			name = name.trim();

			// 중간에 들어가는 공백 제거
			id = id.replace(" ", "");
			pwd = pwd.replace(" ", "");
			pwdCheck = pwdCheck.replace(" ", "");
			email = email.replace(" ", "");
			name = name.replace(" ", "");
		}
		
		if(year == null || sex == null) {
			year = "0";
			sex = null;
		}
		
		// DTO에 데이터 저장
		Member memberDTO = new Member();
		memberDTO.setId(id);
		memberDTO.setPw(pwd);
		memberDTO.setPwCheck(pwdCheck);
		memberDTO.setEmail(email);
		memberDTO.setName(name);
		memberDTO.setYear(year);
		memberDTO.setSex(sex);
		
		// 인스턴스 생성
		MemberDAO memberDAO = MemberDAO.getInstance();
		// 아이디 중복 체크
		boolean idcheck = memberDAO.selectById(id);
		if(idcheck) {
			System.out.println("아이디 중복");
			response.setStatus(409);
		}else {
			// 비밀번호 체크
			if(pwd.equals(pwdCheck)) {
				// 이메일 중복 체크
				boolean emailCheck = memberDAO.selectByEmail(email);
				if(emailCheck) {
					System.out.println("이메일 중복");
					response.setStatus(409);
				}else {
					// 중복확인이 끝나면 조건 확인 서블릿으로 이동
					RequestDispatcher rd = request.getRequestDispatcher("/join/condition");
					rd.forward(request, response);
					
				}
			} else {
				System.out.println("비밀번호 재확인");
				response.setStatus(400);
			}
		}
		
	}

}
