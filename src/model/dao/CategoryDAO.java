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
}
