package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5455134197149605806L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	private void doProcess(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email=req.getParameter("username");
		String password= req.getParameter("password");
		if(email==null)email="";
		if(password==null)password="";
		if(email.equalsIgnoreCase("admin") && password.equalsIgnoreCase("123")){
			System.out.println("admin");
			req.getSession().setAttribute("user", "admin");
			resp.sendRedirect(req.getContextPath());
		}
		else if(email.equalsIgnoreCase("jonh") && password.equalsIgnoreCase("123")){
			System.out.println("jonh");
			req.getSession().setAttribute("user", "jonh");
			resp.sendRedirect(req.getContextPath());
		}
		else{
			System.out.println("hello");
			resp.sendRedirect("login.jsp");
		}
	}
}
