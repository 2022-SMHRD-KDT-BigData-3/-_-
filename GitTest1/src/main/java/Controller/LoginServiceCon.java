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

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
System.out.println("[LoginServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		
		MemberDTO dto = new MemberDTO(id, pw);
		
		//login 메소드 호출
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		
		// 실행결과 console창에 출력
		if(info != null) {
			System.out.println("로그인 성공");
			
			// 로그인 유지하기 => session
			HttpSession session = request.getSession();
			
			// 2. 로그인 정보를 담은 session만들기("저장이름","값")
			session.setAttribute("info", info);
			
			response.sendRedirect("./main.jsp");
		}
		else {
			System.out.println("로그인 실패!!!");
		}
		
		
	}


}
