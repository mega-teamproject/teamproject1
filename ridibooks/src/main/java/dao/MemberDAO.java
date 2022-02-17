package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.Member;

public class MemberDAO {
	private static MemberDAO instance;

	public Connection getConnection() {
		Connection conn = null;

		try {
			InitialContext ic = new InitialContext();

			DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/ridi");

			conn = ds.getConnection();

		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

	// 싱글톤
	public static MemberDAO getInstance() {
		// 스레드 동기화
		if (instance == null) {
			synchronized (MemberDAO.class) {
				instance = new MemberDAO();
			}
		}
		return instance;
	}

	public int insert(Member memberDTO) {
		// 회원 등록
		int su = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "INSERT INTO memberinfo(member_Id, member_Pw, member_Email, member_Name, member_Year, member_Sex, member_SignDate, member_LoginDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getEmail());
			pstmt.setString(4, memberDTO.getName());
			pstmt.setInt(5, memberDTO.getYear());
			pstmt.setString(6, memberDTO.getSex());
			pstmt.setTimestamp(7, Timestamp.valueOf(memberDTO.getSignDate()));
			pstmt.setTimestamp(8, Timestamp.valueOf(memberDTO.getLoginDate()));

			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return su;
	}

	public boolean selectByexist(String IDorEmail) {
		// 아이디, 이메일 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		String SQL = null;

		if (IDorEmail.contains("@")) {
			SQL = "SELECT * FROM memberinfo WHERE member_Email = ?";
		} else {
			SQL = "SELECT * FROM memberinfo WHERE member_Id = ?";
		}

		try {
			conn = getConnection();

			String sql = SQL;

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, IDorEmail);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				result = true;
			}

			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public String selectByinfo(int num, int value) {
		// 아이디 출력 -> 0
		// 이메일 출력 -> 1
		Connection conn = null;
		PreparedStatement pstmt = null;
		String result = null;
		String sql = null;

		try {
			conn = getConnection();

			sql = "SELECT * FROM memberinfo WHERE member_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, value);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				if (num == 0) {
					result = rs.getString("member_Id");
				} else {
					result = rs.getString("member_Email");
				}
			}

			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public int selectByIdValue(String id, String pw, String email) {
		// 아이디, 비밀번호, 이메일 확인 후 고유값 전달
		// 입력할 값이 없을 땐 null을 입력해줌
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String SQL = null;

		if (email != null) {
			SQL = "SELECT * FROM memberinfo WHERE member_Email = ?";
			result = 1;
		} else {
			SQL = "SELECT member_value FROM memberinfo WHERE member_Id = ? AND member_Pw = ?";
		}

		try {
			conn = getConnection();

			String sql = SQL;

			pstmt = conn.prepareStatement(sql);

			if (result == 1) {
				pstmt.setString(1, email);
			} else {
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
			}

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				result = rs.getInt("member_value");
				;
			}

			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public int selectBystatus(String IDorEmail) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String SQL = null;

		if (IDorEmail.contains("@")) {
			SQL = "SELECT * FROM memberinfo WHERE member_Email = ?";
		} else {
			SQL = "SELECT * FROM memberinfo WHERE member_Id = ?";
		}

		try {
			conn = getConnection();

			String sql = SQL;

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, IDorEmail);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				result = rs.getInt("member_status");
				;
			}

			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public void loginupdate(LocalDateTime date, int value) {
		// 로그인 날짜 갱신
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "UPDATE memberinfo SET member_LoginDate = ? WHERE member_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setTimestamp(1, Timestamp.valueOf(date));
			pstmt.setInt(2, value);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void changepw(String pw, int value) {
		// 비밀번호 재설정
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "UPDATE memberinfo SET member_Pw = ? WHERE member_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pw);
			pstmt.setInt(2, value);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void Withdrawal() {
		// 회원 탈퇴 기능
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "UPDATE memberinfo SET member_Status = 1";

			pstmt = conn.prepareStatement(sql);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}