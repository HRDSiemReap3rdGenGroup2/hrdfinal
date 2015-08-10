package controller.news;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;
import model.dao.SaveListDAO;
import model.dto.SaveList;

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
			
			//user
			if(req.getSession().getAttribute("user")!=null && (req.getSession().getAttribute("user")!="")){
				int user_id=(int) req.getSession().getAttribute("user_id");
				ArrayList<SaveList> user_savedlist=new SaveListDAO().getAllSavedNews(user_id);
				req.setAttribute("user_savedlist", user_savedlist);
			}
			
			//paging
			int pagenumber=new NewsDAO().getTotalPage("B020105",6);
			req.setAttribute("page_number", pagenumber);
			int current_page=1;
			if(req.getParameter("page")==null || req.getParameter("page")==""){current_page=1;}
			else{current_page=Integer.parseInt(req.getParameter("page"));}
			if(current_page>pagenumber)current_page=pagenumber;
			req.setAttribute("current_page", current_page);
			
			list=new NewsDAO().getNewsList("B020105", 6, current_page);
			req.setAttribute("list", list);
			req.setAttribute("news_code", "B020105");
			req.setAttribute("title", "បច្ចេកវិទ្យា");
			req.setAttribute("title_id", "tech1");
			req.getRequestDispatcher("/category.jsp").forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
