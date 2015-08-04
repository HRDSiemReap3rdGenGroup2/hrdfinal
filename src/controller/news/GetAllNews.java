package controller.news;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;

public class GetAllNews extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4083663593118226740L;
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
			list=new NewsDAO().getNewsList("B020503");
			req.setAttribute("B020503", list);
			list=new NewsDAO().getNewsList("B030302");
			req.setAttribute("B030302", list);
			list=new NewsDAO().getNewsList("B010105",3);
			req.setAttribute("B010105", list);
			list=new NewsDAO().getNewsList("B020103", 6);
			req.setAttribute("B020103", list);
			req.setAttribute("latestnews",new NewsDAO().getLatestNews());
			req.getRequestDispatcher("homepage.jsp").forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
