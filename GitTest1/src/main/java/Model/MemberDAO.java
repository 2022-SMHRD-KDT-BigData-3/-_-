package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {
	// 전역변수 선언
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int cnt = 0;
		MemberDTO info = null;
		
		// DB 연결 메소드
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
		
		// 회원가입 메소드
		public int join(MemberDTO dto) {
			
			db_conn();
		try {
			// 2. DB에서 무엇을 할지 결정
			// 회원가입 기능 = 입력받은 데이터들을 회원 Table에 추가하기
			String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			// 3. sql문을 DB에 전달 -> 성공시 psmt객체로 반환
			psmt = conn.prepareStatement(sql);
			
			// 4. 바인드 변수에 값 채우기
			// join메소드 매개변수로 dto(입력받은 값들의 묶음 = 가방) 받아오기
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getDogimg());
			psmt.setString(4, dto.getName());
			psmt.setString(5, dto.getSize());
			psmt.setString(6, dto.getBirth());
			psmt.setString(7, dto.getGender());
			psmt.setString(8, dto.getNeutering());
			psmt.setString(9, dto.getHealth());
			psmt.setString(10, dto.getDisease());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			
		} finally {
			db_close();
		} return cnt;
		}
		
		public MemberDTO login(MemberDTO dto) {
		      try {
		         db_conn();
		         
		         String sql = "select * from member where id =? and pw =?";
		         
		         psmt = conn.prepareStatement(sql);
		         
		         psmt.setString(1, dto.getId());
		         psmt.setString(2, dto.getPw());
		         
		         rs = psmt.executeQuery();
		         
		         // 값이 있다 = 로그인 성공
		         if(rs.next()) {
		            String id = rs.getString(1);
		            String pw = rs.getString(2);
		            String dogimg = rs.getString(3);
		            String name = rs.getString(4);
		            String size = rs.getString(5);
		            String birth = rs.getString(6);
		            String gender = rs.getString(7);
		            String neutering = rs.getString(8);
		            String health = rs.getString(9);
		            String disease = rs.getString(10);
		            
		            info = new MemberDTO(id, pw, dogimg, name, size, birth, gender, neutering, health, disease);
		         }
		         
		      }
		      catch(Exception e) {
		         e.printStackTrace();
		      } finally {
		         db_close();
		      }
		      return info;
		   }

		
		

}
