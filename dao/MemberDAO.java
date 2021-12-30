package dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
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
}