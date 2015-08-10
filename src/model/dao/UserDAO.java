package model.dao;

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
	public User login(String username, String password) throws SQLException {
		try{
			String sql="select * from tbuser where user_name=? and user_pass=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, username);
			p.setString(2, password);
			ResultSet rs=p.executeQuery();
			rs.next();
			User u =new User();
			u.setUser_id(rs.getInt("user_id"));
			u.setUser_name(username);
			return u;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return null;
	}
	
	public boolean addUser(User user) throws Exception{
		try{
			String sql="INSERT INTO tbuser() VALUES()";
			PreparedStatement pstmt = con.prepareStatement(sql);
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
}
