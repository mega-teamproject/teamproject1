package controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Check {

	public static class RegularExpression {
		// 아이디 확인
		Matcher i;
		// 영문 소문자, 숫자
		String IdPattern1 = "^[a-z[0-9]]{5,20}$";
		// 영문 소문자
		String IdPattern2 = "^[a-z]{5,20}$";
		// 숫자
		String IdPattern3 = "^[0-9]{5,20}$";

		public boolean idcheck(String id) {
			boolean confirm = false;

			i = Pattern.compile(IdPattern1).matcher(id);
			if (i.find()) {
				confirm = true;
			}

			i = Pattern.compile(IdPattern2).matcher(id);
			if (i.find()) {
				confirm = true;
			}

			i = Pattern.compile(IdPattern3).matcher(id);
			if (i.find()) {
				confirm = true;
			}

			return confirm;
		}

		// 비밀번호 확인
		Matcher m;
		// 영문, 숫자, 특수문자
		String pattern1 = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[$@$!%*#?&])[A-Za-z[0-9]$@$!%*#?&]{8,}$";
		// 영문, 숫자
		String pattern2 = "^[A-Za-z[0-9]]{8,}$";
		// 숫자, 특수문자
		String pattern3 = "^[[0-9]$@$!%*#?&]{8,}$";
		// 영문, 특수문자
		String pattern4 = "^[[A-Za-z]$@$!%*#?&]{8,}$";
		// 같은 문자 3번 연속
		String pattern5 = "(\\S)\\1\\1";

		public boolean pwcheck(String pwd) {
			boolean check = false;
			// 영문, 숫자, 특수문자
			m = Pattern.compile(pattern1).matcher(pwd);
			if (m.find()) {
				check = true;
			}
			// 영문, 숫자
			m = Pattern.compile(pattern2).matcher(pwd);
			if (m.find()) {
				check = true;
			}
			// 숫자, 특수문자
			m = Pattern.compile(pattern3).matcher(pwd);
			if (m.find()) {
				check = true;
			}
			// 영문, 특수문자
			m = Pattern.compile(pattern4).matcher(pwd);
			if (m.find()) {
				check = true;
			}
			// 같은 문자 3번 연속
			m = Pattern.compile(pattern5).matcher(pwd);
			if (m.find()) {
				check = false;
			}

			return check;
		}

		// 이메일 형식 체크
		Matcher e;

		String Epattern = "(\\S+)@(\\w+).(\\w+)";

		public boolean mailcheck(String email) {
			boolean echeck = false;

			m = Pattern.compile(Epattern).matcher(email);
			if (m.find()) {
				echeck = true;
			}

			return echeck;
		}
		
		// 이름 확인
		Matcher n;

		String npattern = "^[가-힣A-Za-z]{2,}$";

		public boolean namecheck(String name) {
			boolean ncheck = false;

			m = Pattern.compile(npattern).matcher(name);
			if (m.find()) {
				ncheck = true;
			}

			return ncheck;
		}
	}
}