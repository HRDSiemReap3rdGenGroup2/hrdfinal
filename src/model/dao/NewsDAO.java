package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.NEW;

import model.dto.News;
import utilities.DBUtility;

public class NewsDAO {
	private Connection con;
	public NewsDAO(){
		con=new DBUtility().getConnection();
	}
	public boolean insertNews(){
		//insert into tbnews (date_insert) values (now())
		return false;
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
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
			String sql="SELECT * FROM tbnews ORDER BY hit_count DESC LIMIT 4 OFFSET 0";
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
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
	public ArrayList<News> search(String s_query, List<String> category) throws SQLException {
		ArrayList<News> list=new ArrayList<News>();
		try{
			String sql="select * from tbnews where lower(news_title) like '%' || lower(?) || '%'";
			if(category.size()>1){
				sql+=" and cat_code in (";
				for(int i=0;i<category.size()-1;i++){
					sql+="'"+category.get(i).toString()+"',";
				}
				sql+="'"+category.get(category.size()-1).toString()+"'";
				sql+=")";
			}
			else if(category.size()==1){
				sql+=" and cat_code in (";
				for(int i=0;i<category.size();i++){
					sql+="'"+category.get(i).toString()+"'";
				}
				sql+=")";
			}
			else{
			}
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, s_query);
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	/**
	 * set news's hit_count=hit_count+1 where news_id=id
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public boolean read(int id) throws SQLException {
		try{
			String sql="UPDATE tbnews SET hit_count=hit_count+1 WHERE news_id=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setInt(1, id);
			if(p.executeUpdate()>0)
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return false;
	}
	public ArrayList<News> filterNews(int n, String media, String category, String time) throws SQLException {
		ArrayList<News> list=new ArrayList<News>();
		System.out.println(media+" "+category+"  "+time+" "+n);
		int t=1;
		if(time=="today")t=1;
		if(time=="weekly")t=7;
		if(time=="monthly")t=30;
		try{
			String sql="select * from tbnews n "
						+"INNER JOIN tbmoduleinfo m on m.module_code=n.cat_code "
						+"WHERE m.module_name like ? and "
						+"m.module_type like ? and " 
						+"n.date_insert BETWEEN (date(now()) - ?) and date(now()) "
						+"ORDER BY n.hit_count DESC "
						+"LIMIT ? OFFSET 0";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, media);
			p.setString(2, category);
			p.setInt(3, t);
			p.setInt(4,n);
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public int getTotalPage(String category, int limit) throws SQLException {
		try{
			String sql="select count(*) from tbnews where cat_code=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, category);
			ResultSet rs=p.executeQuery();
			if(rs.next())return rs.getInt(1)/limit;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return 0;
	}
	public ArrayList<News> getNewsList(String category, int limit, int offset) throws SQLException {
		ArrayList<News> list=new ArrayList<News>();
		offset=limit*(offset-1);
		try{
			String sql="SELECT * FROM tbnews WHERE cat_code=? ORDER BY news_id DESC LIMIT ? OFFSET ?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, category);
			p.setInt(2, limit);
			p.setInt(3, offset);
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
				e.setDate_insert(rs.getDate("date_insert"));
				e.setHit_count(rs.getInt("hit_count"));
				list.add(e);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	
	public boolean addNews(News news) throws Exception{
		try{
			Statement s = con.createStatement();
			ResultSet tmp=s.executeQuery("select nextval('seq_news_id')");
			int i=0;
			if(tmp.next())i=tmp.getInt(1);
			else return false;
			String sql="INSERT INTO tbnews(news_id,cat_code,news_title,news_desc,news_path,news_img,news_date,user_info_code) VALUES(?,?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, i);
			pstmt.setString(2, news.getCat_code());
			pstmt.setString(3, news.getNews_title());
			pstmt.setString(4, news.getNews_desc());
			pstmt.setString(5, news.getNews_path()+"news.jsp?id="+i);
			pstmt.setString(6, news.getNews_img());
			pstmt.setString(7, news.getNews_date());
			pstmt.setString(8, news.getUser_info_code());
			
			if(pstmt.executeUpdate()>0)
				return true;
			
			
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(con!=null)
				con.close();
		}
		
		return false;
	}
	
	public ArrayList<News> getAllNews()throws Exception{
		ArrayList<News> list = new ArrayList<News>();
		try{
			String sql="SELECT news_id, module_type,news_title,news_date FROM tbnews n INNER JOIN tbmoduleinfo m ON m.module_code=n.cat_code";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				News news = new News();
				news.setNews_id(rs.getInt(1));
				news.setModule_type(rs.getString(2));
				news.setNews_title(rs.getString(3));
				news.setNews_date(rs.getString(4));
				list.add(news);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(con!=null)
				con.close();
		}
		return list;
	}
	
	
}
