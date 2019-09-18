package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request scope
		UserVo vo1 = new UserVo();
		vo1.setNo(1L);
		vo1.setName("김준호1");
		request.setAttribute("vo", vo1);
		
		//session scope
		UserVo vo2 = new UserVo();
		vo2.setNo(2L);
		vo2.setName("김준호2");
		HttpSession session = request.getSession(true);
		session.setAttribute("vo", vo2);
		
		//application scope=context scope=Servlet scope 
		UserVo vo3 = new UserVo();
		vo3.setNo(3L);
		vo3.setName("김준호3");
		ServletContext sc=request.getServletContext();
		sc.setAttribute("vo", vo3);
		
		
		
		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
