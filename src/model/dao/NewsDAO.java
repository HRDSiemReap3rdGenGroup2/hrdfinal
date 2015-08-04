package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.News;
import utilities.DBUtility;

public class NewsDAO {
	private Connection con;
	public NewsDAO(){
		con=new DBUtility().getConnection();
	}
	public ArrayList<News> getNewsList(String category) throws SQLException{
		ArrayList<News> list=new ArrayList<News>();
		try{
			String sql="SELECT * FROM tbnews WHERE cat_code=? ORDER BY news_id DESC LIMIT 4 OFFSET 0";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, category);
			ResultSet rs = p.executeQuery();
			while(rs.next()){
				News e= new News();
				e.setNews_id(rs.getInt("news_id"));
				e.setCat_code(rs.getString("cat_code"));
				e.setNews_title(rs.getString("news_title"));
				e.setNews_date(rs.getString("news_date"));
				e.setNews_img(rs.getString("news_img"));
				e.setNews_path(rs.getString("news_path"));
				e.setUser_info_code(rs.getString("user_info_code"));
				e.setNews_desc(rs.getString("news_desc"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<News> getNewsList(String category, int limit) throws SQLException{
		ArrayList<News> list=new ArrayList<News>();
		try{
			String sql="SELECT * FROM tbnews WHERE cat_code=? ORDER BY news_id DESC LIMIT ? OFFSET 0";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, category);
			p.setInt(2, limit);
			ResultSet rs = p.executeQuery();
			while(rs.next()){
				News e= new News();
				e.setNews_id(rs.getInt("news_id"));
				e.setCat_code(rs.getString("cat_code"));
				e.setNews_title(rs.getString("news_title"));
				e.setNews_date(rs.getString("news_date"));
				e.setNews_img(rs.getString("news_img"));
				e.setNews_path(rs.getString("news_path"));
				e.setUser_info_code(rs.getString("user_info_code"));
				e.setNews_desc(rs.getString("news_desc"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<News> getPopNews() throws SQLException{
		ArrayList<News> list=new ArrayList<News>();
		try{
			String sql="SELECT * FROM tbnews WHERE cat_code='B010505' ORDER BY news_id ASC LIMIT 4 OFFSET 0";
			PreparedStatement p = con.prepareStatement(sql);
			ResultSet rs = p.executeQuery();
			while(rs.next()){
				News e= new News();
				e.setNews_id(rs.getInt("news_id"));
				e.setCat_code(rs.getString("cat_code"));
				e.setNews_title(rs.getString("news_title"));
				e.setNews_date(rs.getString("news_date"));
				e.setNews_img(rs.getString("news_img"));
				e.setNews_path(rs.getString("news_path"));
				e.setUser_info_code(rs.getString("user_info_code"));
				e.setNews_desc(rs.getString("news_desc"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<News> getLatestNews() throws SQLException{
		ArrayList<News> list=new ArrayList<News>();
		try{
			String sql="SELECT * FROM tbnews ORDER BY news_id DESC LIMIT 3 OFFSET 0";
			PreparedStatement p = con.prepareStatement(sql);
			ResultSet rs = p.executeQuery();
			while(rs.next()){
				News e= new News();
				e.setNews_id(rs.getInt("news_id"));
				e.setCat_code(rs.getString("cat_code"));
				e.setNews_title(rs.getString("news_title"));
				e.setNews_date(rs.getString("news_date"));
				e.setNews_img(rs.getString("news_img"));
				e.setNews_path(rs.getString("news_path"));
				e.setUser_info_code(rs.getString("user_info_code"));
				e.setNews_desc(rs.getString("news_desc"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public String getNewsPath(int id) throws SQLException {
		try{
			String sql="SELECT news_path FROM tbnews WHERE news_id=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setInt(1, id);
			ResultSet rs = p.executeQuery();
			rs.next();
			return rs.getString("news_path");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return "";
	}
}
