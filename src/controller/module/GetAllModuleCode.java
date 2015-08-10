package controller.module;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ModuleDAO;
import model.dto.Module;

import com.google.gson.Gson;

public class GetAllModuleCode extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -242883891721404463L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) {
		ArrayList<Module> list;
		try {
			list = new ModuleDAO().getAllModuleCode();
			resp.setContentType("application/json");
			resp.setCharacterEncoding("utf-8");
			String buf= new Gson().toJson(list);
			resp.getWriter().write(buf);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
