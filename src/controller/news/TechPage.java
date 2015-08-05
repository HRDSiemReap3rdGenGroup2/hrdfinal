package controller.news;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;

public class TechPage extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3742995495404085593L;
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
		try {
			resp.setIntHeader("Refresh", 60*5);
			java.util.ArrayList<model.dto.News> list=new NewsDAO().getPopNews();
			req.setAttribute("popularnews", list);
			//list=new NewsDAO().getNewsList("B020503", 6);
			list=new NewsDAO().getNewsList("B020105", 6);
			req.setAttribute("list", list);
			req.setAttribute("title", "បច្ចេកវិទ្យា");
			req.setAttribute("title_id", "tech");
			req.getRequestDispatcher("/category.jsp").forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
