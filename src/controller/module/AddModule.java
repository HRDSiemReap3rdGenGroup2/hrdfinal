package controller.module;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ModuleDAO;
import model.dto.Module;

/**
 * Servlet implementation class AddModule
 */
@WebServlet("/AddModule")
public class AddModule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddModule() {
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
		
		
		String module_cate_name = request.getParameter("module_cate_name");
		String module_name = request.getParameter("module_name");
		String module_type = request.getParameter("module_type");
		if(!new ModuleDAO().validateType(module_type))return;
		String module_code = request.getParameter("module_code");
		System.out.println(module_cate_name);
		
		Module module = new Module();
		module.setModult_cat_name(module_cate_name);
		module.setModule_name(module_name);
		module.setModule_type(module_type);
		module.setModule_code(module_code);
		
		try {
			if(new ModuleDAO().addModule(module)){
				System.out.println("Added Successfully..!");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
