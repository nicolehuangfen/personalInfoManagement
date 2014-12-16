package com.cn.hf.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cn.hf.dbconn.DBConn;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class Bean {
	private Connection conn;
	private Statement st;
	private ResultSet rs;	
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public Statement getSt() {
		return st;
	}

	public void setSt(Statement st) {
		this.st = st;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	//查询功能
	public ResultSet query(String sql){
		DBConn db = new DBConn();
		try {
			conn = db.getConnection();
			if(conn != null){
				st = (Statement) conn.createStatement();
				rs = st.executeQuery(sql);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	//更新
	public boolean update(String sql){
		boolean b = false;
		DBConn db = new DBConn();
		try {
			conn = db.getConnection();
			if(conn != null){
				st = (Statement) conn.createStatement();
				st.execute(sql);
				b = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
}
