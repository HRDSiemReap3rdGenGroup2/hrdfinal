package controller.news;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;

public class SearchNews extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4600741998239897517L;

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
	private void doProcess(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try{
			List<String> category = new ArrayList<String>();
			String c_t=req.getParameter("c_t");
			String c_h=req.getParameter("c_h");
			String c_p=req.getParameter("c_p");
			String c_s=req.getParameter("c_s");
			String c_e=req.getParameter("c_e");
			if(c_t!=null && c_t!="")category.add("B010105");
			if(c_h!=null && c_h!="")category.add("B020503");
			if(c_p!=null && c_p!="")category.add("B020103");
			if(c_s!=null && c_s!=""){category.add("B010201");category.add("B020202");}
			if(c_e!=null && c_e!="")category.add("B030302");
			
			java.util.ArrayList<model.dto.News> list=new NewsDAO().getPopNews();
			req.setAttribute("popularnews", list);
			String s_query="";
			s_query= req.getParameter("s_query");
			req.setAttribute("s_query", s_query);
			list=new NewsDAO().search(s_query, category);
			req.setAttribute("result", list);
		}catch(Exception e){
			e.printStackTrace();
		}
		req.getRequestDispatcher("search.jsp").forward(req, resp);
	}

}
