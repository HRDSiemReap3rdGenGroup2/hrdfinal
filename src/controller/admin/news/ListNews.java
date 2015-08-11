package controller.admin.news;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dao.NewsDAO;
import model.dto.News;

/**
 * Servlet implementation class ListNews
 */
@WebServlet("/ListNews")
public class ListNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			ArrayList<News> list = new NewsDAO().getAllNews();
			request.setAttribute("allnews", list);
			
			/*response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			String buf=new Gson().toJson(list);
			//buf="{'draw': 1,'recordsTotal': 57,'recordsFiltered': 57,'data':"+buf+"}";
			
			response.getWriter().write(buf);*/
			
			request.getRequestDispatcher("listnews.jsp").forward(request, response);
			
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
