package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.websocket.Session;

import util.UploadUtil;

@WebServlet("/fileUploadServiceCon")
public class fileUploadServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Part> fileList = (ArrayList<Part>) request.getParts();
		String serverPath = request.getSession().getServletContext().getRealPath("/");
		
		System.out.println(serverPath);
		
		UploadUtil uploadUtil = new UploadUtil(serverPath, "test");
		
		for(Part part : fileList) {
			if(part.getName().indexOf("dogImg") < 0) continue; //f로 들어온 Part가 아니면 스킵
	        if(part.getSubmittedFileName().equals("")) continue; //업로드 된 파일 이름이 없으면 스킵
	           	
	        uploadUtil.saveFiles(part);   
	    }
		HttpSession session =  request.getSession();
		
		session.setAttribute("dogImg", uploadUtil.getImgFiles());
	
		response.sendRedirect("view.jsp");
		
	}

}
