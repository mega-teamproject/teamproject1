package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		if(instance == null) {
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
			
			String sql = "INSERT INTO memberinfo(member_Id, member_Pw, member_Email, member_Name, member_Year, member_Sex) VALUES(?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getEmail());
			pstmt.setString(4, memberDTO.getName());
			pstmt.setInt(5, memberDTO.getYear());
			pstmt.setString(6, memberDTO.getSex());
			
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return su;
	}
	
	public void selectById() {
		// 조회
	}
	
	public void update() {
		// 갱신
	}
	
	public void delete() {
		// 삭제
	}
}