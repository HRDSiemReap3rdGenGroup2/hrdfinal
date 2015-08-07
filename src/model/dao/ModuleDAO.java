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
	public ArrayList<Module> getAllModuleName() throws SQLException{
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
}
