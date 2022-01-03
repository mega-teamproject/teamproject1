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

@WebServlet("/join/condition")
public class JoinCondition extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO memberDAO = MemberDAO.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member memberDTO = new Member();

		String id = memberDTO.getId();
		String pw = memberDTO.getPw();
		String email = memberDTO.getEmail();
		String name = memberDTO.getName();

		// 아이디 확인
		RegularExpression idcheck = new RegularExpression();
		if(!idcheck.idcheck(id)) {
			System.out.println("아이디 재확인");
			response.setStatus(400);
		}
		
		// 비밀번호 확인
		RegularExpression pwdcheck = new RegularExpression();
		if(!pwdcheck.pwcheck(pw)) {
			System.out.println("비밀번호 재확인");
			response.setStatus(400);
		}

		// 이메일 형식 확인
		RegularExpression emailcheck = new RegularExpression();
		if(!emailcheck.mailcheck(email)) {
			System.out.println("이메일 재확인");
			response.setStatus(412);
		}
		
		// 이름 확인
		RegularExpression namecheck = new RegularExpression();
		if(!namecheck.namecheck(name)) {
			System.out.println("이름 재확인");
			response.setStatus(412);
		}
		
		// 회원정보 DB 저장
		// su로 몇행이 저장되었는지 확인
		int su = memberDAO.insert(memberDTO);
		System.out.println(su);
	}
}