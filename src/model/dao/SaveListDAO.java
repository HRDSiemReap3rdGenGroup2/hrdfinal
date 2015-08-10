package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import utilities.DBUtility;


public class SaveListDAO  {
	private Connection con;

	public SaveListDAO(){
		con = new DBUtility().getConnection();
	}
	public ArrayList<Integer> getAllSavedNews(int user_id) throws SQLException{
		ArrayList<Integer> list=new ArrayList<Integer>();
		try{
			String sql="SELECT * FROM tbsavelist WHERE user_id=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setInt(1, user_id);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				list.add(rs.getInt(1));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		
		return list;
	}
}
