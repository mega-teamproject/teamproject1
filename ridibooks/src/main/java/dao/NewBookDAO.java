package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.NewBook;

public class NewBookDAO {
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

	public ArrayList<NewBook> NewBookList(int i) {
		// 신간도서 조회
		ArrayList<NewBook> newlist = new ArrayList<NewBook>();
		BookDAO bookDAO = new BookDAO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String SQL = null;
		
		if(i==1) {
			// 방금 나온 신간
			SQL = "SELECT * FROM book WHERE b_img LIKE ? ORDER BY b_addDate DESC";
		} else if(i==2) {
			// 금주의 신간
			SQL = "SELECT * FROM book WHERE b_addDate BETWEEN DATE_ADD(NOW(),INTERVAL -1 WEEK ) AND NOW() AND b_img LIKE ? ORDER BY b_addDate DESC";
		} else if(i==3) {
			// 베스트셀러
			SQL = "SELECT * FROM book WHERE b_img LIKE ? ORDER BY b_Purchase DESC";
		}

		try {

			conn = getConnection();
			String sql = SQL;

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%L%");
			
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				NewBook book = new NewBook();

				book.setImg(rs.getString("b_img"));
				book.setName(rs.getString("b_Name"));
				book.setPublisher(bookDAO.selectByPublisher(rs.getInt("a_value")));

				newlist.add(book);
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

		return newlist;
	}
}