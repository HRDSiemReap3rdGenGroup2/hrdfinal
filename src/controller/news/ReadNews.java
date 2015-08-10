package controller.news;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;

public class ReadNews extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4868460463686477046L;

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
	private void doProcess(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		try {
			String news_path=new NewsDAO().getNewsPath(id);
			new NewsDAO().read(id);//increase number of hit count of this news by 1
			req.setAttribute("url", news_path);
			resp.sendRedirect(news_path);
			//RequestDispatcher rd= req.getRequestDispatcher("/news1.jsp");

			//resp.setCharacterEncoding("UTF-8");
			//rd.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
