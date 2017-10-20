package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dbset.DbClose;
import dbset.DbSet;

public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();			// dao에서만 사용할 수 있도록 private으로 선언																								
	public static BoardDAO getInstance() {
		return instance;
	}
	
	// ================== 인덱스 자동증가 및 Write 메소드 ======================
	// 게시판 총 4개 -> boardWrite마다 다르게... ????
		int num, su;
		Connection conn = DbSet.getConnect();
		ResultSet rs;
		PreparedStatement pstmt;
		Statement stmt;
		String sql;
		public int boardWrite(BoardDTO dto, String vList) {
			num = 0;																					
			sql = "select max(GUE_NO) as num from TABLE_NAME";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					num = rs.getInt("num")+1;											
				}
				// =============== 입력받은 값 DB에 저장 =====================
				
				sql = "insert into TABLE_NAME values(?,?,?,?,?,?, sysdate)"; // date값은 system값을 씀
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setString(2, dto.getBOD_NAME());
				pstmt.setString(3, dto.getBOD_PWD());
				pstmt.setString(4, dto.getBOD_SUBJECT());
				pstmt.setString(5, dto.getBOD_CONTENT());
				pstmt.setString(6, dto.getBOD_IMG());
				su = pstmt.executeUpdate();
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbClose.close(rs, pstmt, conn);
			}
			return su;		
		}
		// ==============================================================
		// ========================= Read 메소드 ============================
		public ArrayList<BoardDTO> boardSelect(String num){
			conn = DbSet.getConnect();
			ArrayList<BoardDTO> dtoL = new ArrayList<BoardDTO>();
			if(num.equals("1")) {
				sql = "SELECT * from BOARD1 order by BOD_LOGTIME desc"; 
			}else	if(num.equals("2")) {
				sql = "SELECT * from BOARD2 order by BOD_LOGTIME desc"; 
			}else	if(num.equals("3")) {
				sql = "SELECT * from BOARD3 order by BOD_LOGTIME desc"; 
			}else	if(num.equals("4")) {
				sql = "SELECT * from BOARD4 order by BOD_LOGTIME desc"; 
			}
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					BoardDTO dto = new BoardDTO();
					dto.setBOD_NO(rs.getInt("BOD_NO"));
					dto.setBOD_NAME(rs.getString("BOD_NAME"));
					dto.setBOD_PWD(rs.getString("BOD_PWD"));
					dto.setBOD_SUBJECT(rs.getString("BOD_SUBJECT"));
					dto.setBOD_CONTENT(rs.getString("BODE_CONTENT"));
					dto.setBOD_IMG(rs.getString("BOD_IMG"));
					dto.setBOD_LOGTIME(rs.getString("BOD_LOGTIME"));
					dtoL.add(dto);
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbClose.close(pstmt, conn);
			}
			return dtoL;
		}
		// =============================================================
		
		// ====== 대원  ====\
		// ㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ
		// =========
		
}
