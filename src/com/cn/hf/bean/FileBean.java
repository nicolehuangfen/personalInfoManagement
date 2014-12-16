package com.cn.hf.bean;

import java.sql.SQLException;

public class FileBean {
	//insert file into database
	public boolean insertFile(String username, String title, String filename, String type, String filepath){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "insert into file values('"+username+"','"+title+"','"+filename+"','"+type+"','"+filepath+"')";
		if(bean.update(sql)){
			b = true;
		}
		return b;
		
	}
	//query 
	public boolean queryFile(String username) throws SQLException{
		boolean b = false;
		Bean bean = new Bean();
		String sql = "select * from file where username='"+username+"'";
		if(bean.query(sql).next()){
			b = true;
		}
		return b;
	}
	//query by title
	public boolean queryByTitle(String username, String title) throws SQLException{
		boolean b = false;
		Bean bean = new Bean();
		String sql = "select * from file where username='"+username+"' and title='"+title+"'";
		if(bean.query(sql).next()){
			b = true;
		}
		return b;
	}
	//delete
	public boolean delete(String username, String title){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "delete from file where username='"+username+"' and title='"+title+"'";
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
}
