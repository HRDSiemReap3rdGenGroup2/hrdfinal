package controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;
import model.dto.User;

public class SignUp extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5454658684469607060L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req,resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req,resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		try{
			String username=req.getParameter("username");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String confirmpassword=req.getParameter("password_c");
			if(!confirmpassword.equals(password))return;
			String school=req.getParameter("school");
			String department=req.getParameter("department");
			if(Integer.parseInt(req.getParameter("gender"))>2)return;
			String gender=(Integer.parseInt(req.getParameter("gender"))==1)?"Male":"Female";
			User u=new User();
			u.setUser_name(username);
			u.setEmail(email);
			u.setGender(gender);
			u.setDepartment(department);
			u.setUser_pass(password);
			u.setSchool(school);
			if(new UserDAO().addUser(u)){
				User u2=new model.dao.UserDAO().login(email, password);
				req.getSession().setAttribute("user", username);
				req.getSession().setAttribute("user_id", u2.getUser_id());
				resp.sendRedirect(req.getContextPath());
			}else{
				req.setAttribute("signup_status", "failed");
				resp.sendRedirect(req.getContextPath());
			}
		}catch(Exception e){
			req.setAttribute("signup_status", "failed");
			resp.sendRedirect(req.getContextPath());
			e.printStackTrace();
		}
	}

}
