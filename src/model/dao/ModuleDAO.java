package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.dto.Module;
import utilities.DBUtility;

public class ModuleDAO {
	private Connection con;
	public ModuleDAO(){
		con=new DBUtility().getConnection();
	}
	public ArrayList<Module> getAllModuleType() throws SQLException{
		ArrayList<Module> list=new ArrayList<>();
		try{
			String sql="select DISTINCT module_type from tbmoduleinfo";
			PreparedStatement p =con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				Module m=new Module();
				m.setModule_type(rs.getString("module_type"));
				list.add(m);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<Module> getAllModuleCode() throws SQLException{
		ArrayList<Module> list=new ArrayList<>();
		try{
			String sql="select DISTINCT module_code from tbmoduleinfo";
			PreparedStatement p =con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				Module m=new Module();
				m.setModule_type(rs.getString("module_code"));
				list.add(m);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<Module> getAllModuleName() throws SQLException{
		ArrayList<Module> list=new ArrayList<>();
		try{
			String sql="select DISTINCT module_name from tbmoduleinfo";
			PreparedStatement p =con.prepareStatement(sql);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				Module m=new Module();
				m.setModule_name(rs.getString("module_name"));
				list.add(m);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
	public ArrayList<String> getModuleCode(String module_type) throws SQLException {
		ArrayList<String> list=new ArrayList<>();
		try{
			String sql="select module_code from tbmoduleinfo where module_type=?";
			PreparedStatement p =con.prepareStatement(sql);
			p.setString(1, module_type);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				list.add(rs.getString(1));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null)con.close();
		}
		return list;
	}
}
