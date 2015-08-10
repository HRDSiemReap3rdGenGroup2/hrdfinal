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
			String sql="select * from tbuser where email=? and user_pass=?";
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
	
	public boolean addUser(User u) throws Exception{
		try{
			String sql="INSERT INTO tbuser(user_id, user_type,  user_name,user_pass, email, gender,department, school) VALUES(nextval('seq_user_id'),'2',?,?,?,?,?,?)";
			PreparedStatement p = con.prepareStatement(sql);
			p.setString(1, u.getUser_name());
			p.setString(2, u.getUser_pass());
			p.setString(3, u.getEmail());
			p.setString(4, u.getGender());
			p.setString(5, u.getDepartment());
			p.setString(6, u.getSchool());
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
}
