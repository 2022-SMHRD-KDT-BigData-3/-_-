package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DiaryDAO_sy;
import Model.DiaryDTO;

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
		
		DiaryDTO dto = new DiaryDTO(title, content);
		
		DiaryDAO_sy dao = new DiaryDAO_sy();
		int cnt = dao.diary_add(dto, id);
		if (cnt>0) {
			response.sendRedirect("./diary.jsp");
		}else {
			
			// join.html에 실패했다고 뜨면 alert 실패했습니다
			response.sendRedirect("./diary.jsp?add=fail");
			
		}
		
	}

}
