package com.cn.hf.dbconn;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBConn {
	private String url = "jdbc:mysql://localhost:3306/personalmanage";
	private String user = "root";
	private String password = "123456";
	private String drv = "com.mysql.jdbc.Driver";
	private Connection conn;
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public Connection getConnection() throws SQLException{
		try {
			Class.forName(drv).newInstance();
			conn = (Connection) DriverManager.getConnection(url,user,password);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
