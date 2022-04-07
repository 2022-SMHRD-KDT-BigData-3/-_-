package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DiaryAddServiceCon")
public class DiaryAddServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[DiaryAddServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		System.out.println("title : " + title);
		System.out.println("content : " + content);
		System.out.println("id : " + id);
		
		int cnt = 0;
		
		if (cnt == 0) {

			response.sendRedirect("./diary.jsp");
			// 로그인 html 에 join=success가 넘어오면 alert 성공했습니다
		}
		
		
		
	}

}
