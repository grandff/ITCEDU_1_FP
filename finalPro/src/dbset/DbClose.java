package dbset;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// DB에서 사용 후 DB를 닫아줌
public class DbClose {
	public static void close(PreparedStatement stmt, Connection conn) {
		try {
			if(stmt != null) {
				stmt.close();
				System.out.println("statement 종료");
			}
			if(conn != null) {
				conn.close();
				System.out.println("connection 종료");
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs, PreparedStatement stmt, Connection conn) {
		try {
			if(rs != null) {
				rs.close();
				System.out.println("resultset 종료");
			}
			if(stmt != null) {
				stmt.close();
				System.out.println("statement 종료");
			}
			if(conn != null) {
				conn.close();
				System.out.println("connection 종료");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
