<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	String db_id = "campus_k_0325_1";
	String db_pw = "smhrd1";

	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	String sql = "select dogName from member where id = ? and pw = ?";
	
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	
	ResultSet rs = psmt.executeQuery();
	
	String dogName = null;
	if(rs.next()){
		dogName = rs.getString("dogName");
	}
	
	if(dogName != null){
		System.out.println("로그인 성공!");
	}
	else{
		System.out.println("로그인 실패!");
	}
	
%>
	<script type="text/javascript"></script>




</body>
</html>