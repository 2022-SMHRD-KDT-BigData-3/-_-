package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IdCheckServiceCon")
public class IdCheckServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 서버 데이터베이스 역할
		System.out.println("[IdCheckServiceCon]");
		
		String id = request.getParameter("id");
		System.out.println("입력한 아이디는 : " +id);
		
		int cnt =0;
		// 아이디 있다면 1
		// 없다면 0
		// 데이터 베이스에 smhrd 라는 아이디만 있다면
		if(id.equals("smhrd")) {
			cnt=1;
		}
		
		PrintWriter out = response.getWriter();
		out.print(cnt); // 출력이 아니라 html 파일로 데이터 다시 전송
	}

}
