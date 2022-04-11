package Controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.MemberDAO;
import Model.MemberDTO;
import util.UploadUtil;

@WebServlet("/JoinServiceCon")
public class JoinServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[JoinServiceCon]");
		
		// 1. post방식 인코딩 utf-8
		// 데이터를 보낸 main.jsp의 페이지 인코딩 방식을 따라감
		request.setCharacterEncoding("UTF-8");
		String serverPath = request.getSession().getServletContext().getRealPath("/");
		UploadUtil uploadUtil = new UploadUtil(serverPath,request.getParameter("id"));
		
		//이미지 리스트 가지고 오기
		ArrayList<Part> fileList = (ArrayList<Part>) request.getParts();
		uploadUtil.saveFiles(fileList.get(0)); 
		
		// 2. request객체에서 보낸 데이터 4가지 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		//String dogImg = fileList.get(0).getName();
		Part dogImg = request.getPart("dogImg");
		String dogName = request.getParameter("dogName");
		String dogSize = request.getParameter("dogSize");
		String birth = request.getParameter("yy")+"/"+request.getParameter("mm")+"/"+request.getParameter("dd");
		String gender = request.getParameter("gender");
		String neutering = request.getParameter("neutering");
		String[] health = request.getParameterValues("health");
		String[] disease = request.getParameterValues("disease");
		
		
		
	
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		System.out.println("pw2 : " + pw2);
		System.out.println("dogImg : " + dogImg.getSubmittedFileName());
		System.out.println("dogName : " + dogName);
		System.out.println("dogSize : " + dogSize);
		System.out.println("birth : " + birth);
		System.out.println("gender : " + gender);
		System.out.println("neutering : " + neutering);
		
		System.out.print("health : ");
		String health2 = "";
		for (int i = 0; i < health.length; i++) {
			health2 += health[i];
			if (i != health.length - 1) {
				health2 += ", ";
			}
		}

		System.out.println(health2);

		System.out.print("disease : ");
		String disease2 = "";
		for (int i = 0; i < disease.length; i++) {
			disease2 += disease[i];
			if (i != disease.length - 1) {
				disease2 += ", ";
			}
		}
		System.out.println(disease2);
		
		// 3. DTO 가방으로 데이터 묶기
		MemberDTO dto = new MemberDTO(id, pw, dogImg.getSubmittedFileName(), dogName, dogSize, birth, gender, neutering, health2, disease2);
		
		// 4. join 메소드 호출하기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		if (cnt>0) {
			
			response.sendRedirect("./Login.jsp");
			// 로그인 html 에 join=success가 넘어오면 alert 성공했습니다 
		}else {
			
			// join.html에 실패했다고 뜨면 alert 실패했습니다
			response.sendRedirect("./Join.jsp?join=fail");
			
		}
		
		uploadUtil.saveFiles(dogImg);
		
	
	}

}
