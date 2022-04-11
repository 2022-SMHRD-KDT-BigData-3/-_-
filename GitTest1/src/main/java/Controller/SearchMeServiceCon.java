package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/SearchMeServiceCon")
public class SearchMeServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[SearchMeServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String searchid = request.getParameter("searchid");
		
		System.out.println("searchid : " + searchid);
		
		//login 메소드 호출
		MemberDAO dao = new MemberDAO();
		
		if(searchid != null) {
			
			// 로그인 유지하기 => session
			HttpSession session = request.getSession();
			
			response.sendRedirect("./diary.jsp?id="+searchid);
		}
		else {
			System.out.println("로그인 실패!!!");
			response.sendRedirect("./Login.jsp?login=fail");
			// PrintWriter out = new PrintWriter();
		}
	
	}

}
