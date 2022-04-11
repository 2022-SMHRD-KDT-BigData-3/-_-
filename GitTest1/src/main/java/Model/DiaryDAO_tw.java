package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DiaryDAO_tw {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	DiaryDTO dto = null;
	MemberDTO mdto = null;

	// conn
	public void db_conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_k_0325_1";
			String db_pw = "smhrd1";

			DriverManager.getConnection(db_url, db_id, db_pw);
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			if (conn != null) {
				System.out.println("DB 연결 성공");
			} else {
				System.out.println("DB 연결 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// close
	public void db_close() {
		try {
			if (rs != null) {
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
	
	public int diary_add(DiaryDTO dto, String id) {

		db_conn();
	try {
		// 2. DB에서 무엇을 할지 결정
		// 회원가입 기능 = 입력받은 데이터들을 회원 Table에 추가하기
		String sql = "insert into diary values(food_num_seq.nextval, ?, sysdate, ?, ?)";
		
		// 3. sql문을 DB에 전달 -> 성공시 psmt객체로 반환
		psmt = conn.prepareStatement(sql);
		
		// 4. 바인드 변수에 값 채우기
		// join메소드 매개변수로 dto(입력받은 값들의 묶음 = 가방) 받아오기
		psmt.setString(1, id);
		psmt.setString(2, dto.getTitile());
		psmt.setString(3, dto.getContent());
		
		cnt = psmt.executeUpdate();
		
	} catch(Exception e) {
		
	} finally {
		db_close();
	} return cnt;
	}

	public DiaryDTO diary_load(int diarynum) {
		db_conn();
		try {
			// 2. DB에서 무엇을 할지 결정
			// 회원가입 기능 = 입력받은 데이터들을 회원 Table에 추가하기
			String sql = "select * from diary where diarynum=? ";
			
			// 3. sql문을 DB에 전달 -> 성공시 psmt객체로 반환
			psmt = conn.prepareStatement(sql);
			
			// 4. 바인드 변수에 값 채우기
			// join메소드 매개변수로 dto(입력받은 값들의 묶음 = 가방) 받아오기
			psmt.setInt(1, diarynum);
			
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				diarynum = rs.getInt(1);
				String id  = rs.getString(2);
				String adddate = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				
				dto = new DiaryDTO(diarynum, title, id, content);
							
			}
		} catch(Exception e) {
			
		} finally {
			db_close();
		} return dto;
		}
		
	public MemberDTO member_load(String id) {
		db_conn();
	
		try {
			// 2. DB에서 무엇을 할지 결정
			// 회원가입 기능 = 입력받은 데이터들을 회원 Table에 추가하기
			String sql = "select dogimg,dogname,health,disease from member where id=? ";
			
			// 3. sql문을 DB에 전달 -> 성공시 psmt객체로 반환
			psmt = conn.prepareStatement(sql);
			
			// 4. 바인드 변수에 값 채우기
			// join메소드 매개변수로 dto(입력받은 값들의 묶음 = 가방) 받아오기
			psmt.setString(1, id);
			
			
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String dogimg  = rs.getString(1);
				String dogname = rs.getString(2);
				String health = rs.getString(3);
				String disease = rs.getString(4);
				
				mdto = new MemberDTO(id, dogimg, dogname, health, disease);
							
			}
		} catch(Exception e) {
			
		} finally {
			db_close();
		} return mdto;
		
		
	}
	} 
