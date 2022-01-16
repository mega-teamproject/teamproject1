package controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Check.RegularExpression;
import dao.MemberDAO;
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
		LocalDateTime signDate = LocalDateTime.now();
		LocalDateTime loginDate = signDate;

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
		Member member = new Member();
		member.setId(id);
		member.setPw(pw);
		member.setPwCheck(pwCheck);
		member.setEmail(email);
		member.setName(name);
		member.setYear(year);
		member.setSex(sex);
		member.setSignDate(signDate);
		member.setLoginDate(loginDate);

		id = member.getId();
		pw = member.getPw();
		pwCheck = member.getPwCheck();
		email = member.getEmail();
		name = member.getName();
		year = member.getYear();
		sex = member.getSex();
		signDate = member.getSignDate();
		loginDate = member.getSignDate();

		// 인스턴스 생성
		MemberDAO memberDAO = MemberDAO.getInstance();
		// 아이디 중복 체크
		boolean idcheck = memberDAO.selectById(id);
		if (idcheck) {
			System.out.println("아이디 중복");
			response.setStatus(409);
			response.sendRedirect("http://localhost/jsp/join2.jsp");
		} else {
			// 비밀번호 체크
			if (pw.equals(pwCheck)) {
				// 이메일 중복 체크
				boolean emailCheck = memberDAO.selectByEmail(email);
				if (emailCheck) {
					System.out.println("이메일 중복");
					response.setStatus(409);
				} else {
					// 아이디 확인
					RegularExpression idchecking = new RegularExpression();
					if (!idchecking.idcheck(id)) {
						System.out.println("아이디 재확인");
						response.setStatus(400);
					}

					// 비밀번호 확인
					RegularExpression pwdcheck = new RegularExpression();
					if (!pwdcheck.pwcheck(pw)) {
						System.out.println("비밀번호 재확인");
						response.setStatus(400);
					}

					// 이메일 형식 확인
					RegularExpression emailcheck = new RegularExpression();
					if (!emailcheck.mailcheck(email)) {
						System.out.println("이메일 재확인");
						response.setStatus(412);
					}

					// 이름 확인
					RegularExpression namecheck = new RegularExpression();
					if (!namecheck.namecheck(name)) {
						System.out.println("이름 재확인");
						response.setStatus(412);
					}
				}
				
				response.setStatus(201);
				memberDAO.insert(member);									// 회원정보 DB 저장
				response.sendRedirect("http://localhost/jsp/index.jsp");	// 회원가입 완료 시 메인 페이지로 이동
				
			} else {
				System.out.println("비밀번호 재확인");
				response.setStatus(400);
			}
		}
	}
}