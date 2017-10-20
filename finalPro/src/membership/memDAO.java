package membership;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbset.DbClose;
import dbset.DbSet;

public class memDAO {
	memDTO dto;
	DbClose dbclose = new DbClose();
	Connection conn = null;
	Statement stmt;
	PreparedStatement indexPlus, insertMem, pstmt3, pstmt4;
	ResultSet res;
	String sql = "", sql2 = "", sql3 = "", sql4 = "";
	int su = 0, num = 0;
	memDAO() {}
	private static memDAO instance = new memDAO();																								
	public static memDAO getInstance() {
		return instance;
	}
		// ============================ 회원 가입 ===============================
	public int memInsert(memDTO dto) {
			conn = DbSet.getConnect();
			num = 0;																					
			sql = "select max(GUE_NO) as num from guestbook";	
			try {
				// ===================== 인덱스 자동 증가 ==================
				indexPlus = conn.prepareStatement(sql);
				res = indexPlus.executeQuery();
				while(res.next()) {
					num = res.getInt("num")+1;											// 인덱스 값을 +1 증가
				}
				// ================== 입력받은 값 DB에 저장 =====================
				sql = "insert into memberDB values(?,?,?,?,?,?)"; 
				insertMem = conn.prepareStatement(sql);
				insertMem.setInt(1, num);
				insertMem.setString(2, dto.getMem_name());
				insertMem.setString(3, dto.getMem_id());
				insertMem.setString(4, dto.getMem_pwd());
				insertMem.setString(5, dto.getMem_email());
				insertMem.setString(6, dto.getMem_gender());
				su = insertMem.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbClose.close(res, insertMem, conn);
			}
			return su;		
		}
		// ========================================
	
}
