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

	public ArrayList<NewBook> NewBookList() {
		// 신간도서 조회
		ArrayList<NewBook> newlist = new ArrayList<NewBook>();
		BookDAO bookDAO = new BookDAO();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {

			conn = getConnection();
			String sql = "SELECT * FROM book ORDER BY b_addDate DESC";

			pstmt = conn.prepareStatement(sql);
			
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