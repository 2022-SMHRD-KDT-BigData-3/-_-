package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.DogFoodDAO;
import Model.DogFoodDTO;

@WebServlet("/gridServiceCon")
public class gridServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  response.setContentType("text/plain; charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      Gson gson = new Gson();
	      
	      try {
	    	  
	  		String test = request.getParameter("test");
			System.out.println("test : "+ test);
			
			DogFoodDAO dao = new DogFoodDAO();
			
			ArrayList<DogFoodDTO> list = new ArrayList<>();
			list = dao.viewAllFood(test); 
	    	   
	        out.print(gson.toJson(list));
	         
	      }catch(Exception err) {
	         err.printStackTrace();
	      }
		
	}

}
