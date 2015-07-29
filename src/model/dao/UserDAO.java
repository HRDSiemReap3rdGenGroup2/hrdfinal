package model.dao;

import java.sql.Connection;

import utilities.DBUtility;

public class UserDAO {
	private Connection con = null;
	public UserDAO(){
		con = new DBUtility().getConnection();
	}
	
}
