package dbset;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbSet {
	
	public static Connection getConnect() {
		// Connection형으로 선언
		String vUrl = "jdbc:oracle:thin:@localhost:1521:XE";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(vUrl, "hr", "123");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return conn;
	}
}
