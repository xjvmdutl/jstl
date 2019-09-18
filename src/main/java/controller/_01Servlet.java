package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=10;
		long l=10;
		float f=3.14f;
		double d=3.14;
		boolean b = true;
		Object o = null;
		UserVo vo = new UserVo();
		vo.setNo(10L);
		vo.setName("김준호");
		request.setAttribute("iVal", i);//오토 박싱이 일어난다.=>new Integer(iVal)
		request.setAttribute("lVal", l);
		request.setAttribute("fVal", f);
		request.setAttribute("dVal", d);
		request.setAttribute("bVal", b);
		request.setAttribute("obj", o);
		request.setAttribute("user", vo);
		
		
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
