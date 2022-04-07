package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;

@WebServlet("/IdCheckServiceCon")
public class IdCheckServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[IdCheckServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		System.out.println("입력한 아이디는 : " +id);
		
		MemberDAO dao = new MemberDAO();
		
		PrintWriter out = response.getWriter();
		out.print(dao.checkId(id)); // 출력이 아니라 html 파일로 데이터 다시 전송
	}

}
