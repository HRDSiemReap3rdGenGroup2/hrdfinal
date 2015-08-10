package controller.admin.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;
import model.dto.User;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String usertype = request.getParameter("usertype");
		int subscribe = Integer.parseInt(request.getParameter("subscribe"));
		
		User user = new User();
		
		user.setUser_name(username);
		user.setEmail(email);
		user.setSubscribe(subscribe);
		user.setUser_pass(password);
		user.setGender(gender);
		user.setUser_type(usertype);
		
		System.out.println(subscribe);
		System.out.println(username);
		System.out.println(email);
		System.out.println(usertype);
		System.out.println(gender);
		System.out.println(password);
		
		try {
			boolean status = new UserDAO().addUser(user);
			if(status)
				System.out.println("success!");
			response.sendRedirect("formuser");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
