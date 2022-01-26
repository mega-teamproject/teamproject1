package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.BookDTO;

public class BookDAO {
	
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
	
	public ArrayList<BookDTO> bookSearch(String q) {
		// 도서 검색 결과 조회
		ArrayList<BookDTO> list = new ArrayList<BookDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "SELECT * FROM book WHERE b_Name LIKE ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "%"+q+"%");
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BookDTO bookdto = new BookDTO();
				
				bookdto.setBookimg(rs.getString("b_img"));
				bookdto.setBname(rs.getString("b_Name"));
				bookdto.setAuthor(rs.getInt("a_value"));
				bookdto.setBgrade(rs.getInt("b_Grade"));
				bookdto.setReview(rs.getInt("review_value"));
				bookdto.setBpublisher(rs.getString("b_Publisher"));
				bookdto.setCategory(rs.getInt("ct_value"));
				bookdto.setTotal(rs.getInt("b_Total"));
				bookdto.setBinfomation(rs.getString("b_Infomation"));
				bookdto.setBprice(rs.getInt("b_Price"));
				
				list.add(bookdto);
			}
			
			return list;
			
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
		
		return null;
	}
	
	
}
