package controller.admin.news;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ModuleDAO;
import model.dao.NewsDAO;
import model.dto.Module;
import model.dto.News;

/**
 * Servlet implementation class UpdateNews
 */
@WebServlet("/UpdateNews")
public class UpdateNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int news_id = Integer.parseInt(request.getParameter("id"));
		ArrayList<Module> list;
		try {
			response.setCharacterEncoding("utf-8");
			list = new ModuleDAO().getAllModuleTypeCode();
			request.setAttribute("typecode", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			News news = new NewsDAO().getNews(news_id);
			news.setStatus(1);
			request.setAttribute("news", news);
			request.getRequestDispatcher("addnews.jsp").forward(request, response);

		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
