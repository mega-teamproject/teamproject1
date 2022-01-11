package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

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
			// TODO Auto-generated catch block
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
			pstmt.setString(5, memberDTO.getYear());
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
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return su;
	}

	public boolean selectById(String id) {
		// 아이디 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM memberinfo WHERE member_Id = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public String selectById(int value) {
		// 아이디 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		String result = null;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM memberinfo WHERE member_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, value);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getString("member_Id");
			}
			
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int selectByIdValue(String id, String pw) {
		// 아이디, 비밀번호 확인 후 고유값 전달
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			conn = getConnection();

			String sql = "SELECT member_value FROM memberinfo WHERE member_Id = ? AND member_Pw = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("member_value");;
			}
			
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int selectByIdValue(String email) {
		// 이메일 확인 후, 고유값 전달
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM memberinfo WHERE member_Email = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, email);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("member_value");
			}
			
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public boolean selectByEmail(String email) {
		// 이메일 조회 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM memberinfo WHERE member_Email = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, email);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public boolean selectByvalue(int value) {
		// 세션 확인을 위한 아이디 고유값 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = false;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM memberinfo WHERE member_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, value);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public void update() {
		// 갱신
	}

	public void delete() {
		// 삭제
	}
}