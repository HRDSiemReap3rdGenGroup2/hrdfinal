package model.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.User;
import utilities.DBUtility;

public class UserDAO {
	private Connection con = null;
	public UserDAO(){
		con = new DBUtility().getConnection();
	}
	public ArrayList<User> getAllUser() throws SQLException{
		ArrayList<User> list = new ArrayList<User>();
		try{
			String sql="SELECT * FROM tbuser";
			PreparedStatement p=con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				User user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_name(rs.getString("user_name"));
				user.setUser_pass(rs.getString("user_pass"));
				user.setUser_type_id(rs.getInt("user_type_id"));
				user.setUser_type(rs.getString("user_type"));
				list.add(user);
			}
			return list; 
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public boolean login(String username, String password) throws SQLException {
		try{
			String sql="{call login(?,?)}";
			CallableStatement c=con.prepareCall(sql);
			c.setString(1, username);
			c.setString(2, password);
			ResultSet rs=c.executeQuery();
			rs.next();
			if(rs.getInt(1)==1)return true;
			else return false;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return false;
	}
}
