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
import dto.CartWishDTO;

public class BookDAO {

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
	
	public String selectByPublisher(int i) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String result = null;
		
		try {
			conn = getConnection();

			String sql = "SELECT * FROM author WHERE a_value = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, i);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				result = rs.getString("a_Name");
			}

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

	public ArrayList<BookDTO> bookSearch(String q, int n) {
		// 도서 검색 결과 조회
		ArrayList<BookDTO> list = new ArrayList<BookDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			
			conn = getConnection();
			if(n==0) {
				String sql = "SELECT * FROM book WHERE b_Name LIKE ?";

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, "%" + q + "%");
			}else {
				String sql = "SELECT * FROM book WHERE b_value=?";
				
				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, n);

			}
			ResultSet rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				BookDTO bookdto = new BookDTO();

				bookdto.setBookvalue(rs.getInt("b_value"));
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

		return list;
	}

	public boolean selectByList(int value, int bookvalue, int id) {
		// 카트에 해당 아이디와 책이 있는지 조회
		Connection conn = null;
		PreparedStatement pstmt = null;
		boolean result = true;
		int su = value;
		String ifSQL = null;

		if (su == 0) {
			ifSQL = "SELECT * FROM wish WHERE b_value=? AND member_value=?";
		} else {
			ifSQL = "SELECT * FROM cart WHERE b_value=? AND member_value=?";
		}

		try {
			conn = getConnection();

			String sql = ifSQL;

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, bookvalue);
			pstmt.setInt(2, id);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				result = false;
			}

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

	public int bookadd(int value, CartWishDTO cart) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int su = 0;
		String ifSQL = null;

		if (su == 0) {
			ifSQL = "INSERT INTO wish(b_value, member_value) VALUES(?, ?)";
		} else {
			ifSQL = "INSERT INTO cart(b_value, member_value) VALUES(?, ?)";
		}

		try {
			conn = getConnection();

			String sql = ifSQL;

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, cart.getCbook());
			pstmt.setInt(2, cart.getCid());

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

	public int bookdelete(int value, CartWishDTO cart) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int su = value;
		String ifSQL = null;

		if (su == 0) {
			ifSQL = "DELETE FROM wish WHERE b_value = ? AND member_value = ?";
		} else {
			ifSQL = "DELETE FROM cart WHERE b_value = ? AND member_value = ?";
		}

		try {
			conn = getConnection();

			String sql = ifSQL;

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, cart.getCbook());
			pstmt.setInt(2, cart.getCid());

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
}