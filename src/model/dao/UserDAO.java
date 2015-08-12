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
			String sql="select * from tbuser where user_email=? and user_pass=?";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, username);
			p.setString(2, password);
			ResultSet rs=p.executeQuery();
			if(rs.next()){
			User u =new User();
			u.setUser_id(rs.getInt("user_id"));
			u.setUser_name(rs.getString("user_name"));
			return u;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return null;
	}
	
	public boolean addUser(User user) throws Exception{
		try{
			String sql="INSERT INTO tbuser(user_id, user_type, user_name,user_pass, user_email, user_gender) VALUES(nextval('seq_user_id'),'2',?,?,?,?)";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, user.getUser_name());
			p.setString(2, user.getUser_pass());
			p.setString(3, user.getEmail());
			p.setString(4, user.getGender());
			if(p.executeUpdate()>0)
				return true;
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(con!=null)
				con.close();
		}
		return false;
	}
	public ArrayList<User> getAllUser1() throws SQLException{
		ArrayList<User> list = new ArrayList<User>();
		try{
			String sql="select user_id, user_name, user_type, user_email, user_gender, user_pass From tbuser";
			PreparedStatement p=con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				User user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_name(rs.getString("user_name"));
				user.setUser_pass(rs.getString("user_pass"));
				user.setUser_type(rs.getString("user_type"));
				user.setGender(rs.getString("user_gender"));
				user.setEmail(rs.getString("user_email"));
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
	
}
