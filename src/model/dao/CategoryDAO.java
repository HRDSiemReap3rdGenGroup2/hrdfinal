package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.Category;
import utilities.DBUtility;

public class CategoryDAO {
	private Connection con = null;
	public CategoryDAO(){
		con = new DBUtility().getConnection();
	}
	public ArrayList<Category> getAllCategory() throws SQLException{
		ArrayList<Category> list = new ArrayList<Category>();
		try{
			String sql="SELECT * FROM tbcategory";
			PreparedStatement p=con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				Category category=new Category();
				category.setCat_code(rs.getString("cat_code"));
				category.setCat_desc(rs.getString("cat_desc"));
				category.setCat_id(rs.getInt("cat_id"));
				category.setCat_name(rs.getString("cat_name"));
				category.setParent_id(rs.getInt("parent_id"));
				list.add(category);
			}
			return list; 
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public boolean addCategory(Category cate) throws SQLException{
		try{
			String sql="INSERT INTO tbcategory values(?,?,?,?,?)";
			PreparedStatement p=con.prepareStatement(sql);
			p.setInt(1, cate.getCat_id());
			p.setString(2, cate.getCat_code());
			p.setInt(3, cate.getParent_id());
			p.setString(4, cate.getCat_name());
			p.setString(5, cate.getCat_desc());
			if(p.executeUpdate()>0)return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return false;
	}
	public boolean updateCategory(Category cate) throws SQLException{
		try{
			String sql="UPDATE tbcategory SET cat_code=?, parent_id=?, cat_name=?, cat_desc=? WHERE cat_id=?";
			PreparedStatement p=con.prepareStatement(sql);
			p.setString(1, cate.getCat_code());
			p.setInt(2, cate.getParent_id());
			p.setString(3, cate.getCat_name());
			p.setString(4, cate.getCat_desc());
			p.setInt(5, cate.getCat_id());
			if(p.executeUpdate()>0)return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return false;
	}
	public boolean deleteCategroy(int cate_id) throws SQLException{
		try{
			String sql="DELETE FROM tbcategory WHERE cat_id=?";
			PreparedStatement p=con.prepareStatement(sql);
			p.setInt(1, cate_id);
			if(p.executeUpdate()>0)return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return false;
	}
}
