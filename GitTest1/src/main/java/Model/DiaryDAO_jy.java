package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DiaryDAO_jy {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	DiaryDTO diary = null;
	
	// DB연결 메소드
	public void db_conn() {
		try {
			// 1. ojdbc6.jar -> import (maven pom.xml)
			// 2. Class 찾기 -> Java와 DB를 이어주는 통로
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 3. 카드키 만들기 (url, id, pw)
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_k_0325_1";
			String db_pw = "smhrd1";
			
			// 4. DB연결
			//DriverManager.getConnection(db_url, db_id, db_pw);
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
			if(conn != null) {
				System.out.println("DB 연결 성공");
			}else {
				System.out.println("DB 연결 실패");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	// DB 종료 메소드
	public void db_close() {
		try {
			if ( rs !=null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 다이어리 쓰는 메소드
//	public int write(DiaryDTO dto) {
//		int cnt = 0;
//		try {
//			db_conn();
//			
//			String sql = "insert into diary values (?,?,?,?,?)"
//					
//			psmt = conn.prepareStatement(sql); 
//			
//			psmt.setString(1, dto.getTitle());
//	        psmt.setString(2, dto.getContent());
//	        
//	        cnt = psmt.executeUpdate();
//			
//		}
//		catch(SQLException e) {
//			e.printStackTrace();
//		}
//		finally {
//			db_close();
//		}
//		return cnt;
//	}
	
	// 다이어리 조회 메소드
	public ArrayList<DiaryDTO> selectDiary(String id){
		ArrayList<DiaryDTO> list = new ArrayList();
		
		db_conn();
		
		String sql = "select * from diary where id=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(4);
				String name = rs.getString(2);
				String date = rs.getString(3);
				
				DiaryDTO dto = new DiaryDTO(num, title, name, date);
				list.add(dto);
				}
				
			}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			db_close();
		}
		return list;
	}
	
	
	
	
	
}
