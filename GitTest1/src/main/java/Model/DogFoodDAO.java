package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DogFoodDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	DogFoodDTO dto = null;

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

	// 사료 목록
	public ArrayList<DogFoodDTO> viewAllFood() {
		String sql="select * from dogfood order by fdnum";
		ArrayList<DogFoodDTO> list = new ArrayList<>();
		
		db_conn();
		try {
			psmt = conn.prepareStatement(sql);
			// 실행
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String fdNum = rs.getString(1);
				String fdCom = rs.getString(2);
				String fdName = rs.getString(3);
				String material = rs.getString(4);
				String imgUrl = rs.getString(5);
				String ingredient = rs.getString(6);
				
				DogFoodDTO dto = new DogFoodDTO(fdNum, fdCom, fdName, material, imgUrl, ingredient);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		} return list;
	}
	
	//사료상세정보
	public ArrayList<DogFoodDTO> viewFoodDetail(String fdcom) {
		String sql="select * from dogfood where fdcom=? order by fdnum";
		ArrayList<DogFoodDTO> list = new ArrayList<>();
		
		db_conn();
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, fdcom);
			// 실행
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String fdNum = rs.getString(1);
				String fdCom = rs.getString(2);
				String fdName = rs.getString(3);
				String material = rs.getString(4);
				String imgUrl = rs.getString(5);
				String ingredient = rs.getString(6);
				
				DogFoodDTO dto = new DogFoodDTO(fdNum, fdCom, fdName, material, imgUrl, ingredient);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		} return list;
	}
}
