package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;

@WebServlet("/PwCheckServiceCon")
public class PwCheckServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[PwCheckServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		System.out.println("입력한 비번은 : " +pw);
		System.out.println("재확인 : " +pw2);
		
		int cnt=0;
		//다르면 1
		//같으면 0
		if(pw.equals(pw2)) {
			cnt=0;
		}else{
			cnt=1;
		}
		PrintWriter out = response.getWriter();
		out.print(cnt); // 출력이 아니라 html 파일로 데이터 다시 전송
	}

}
