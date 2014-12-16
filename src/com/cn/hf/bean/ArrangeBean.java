package com.cn.hf.bean;

import java.sql.SQLException;

public class ArrangeBean {
	//add arrangement
	public boolean add(String username, String date, String content) throws SQLException{
		boolean b = false;
		String sql = "insert into date values('"+username+"','"+date+"','"+content+"')";
		Bean bean = new Bean();
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
	//query by date
	public boolean queryByDate(String username, String date) throws SQLException{
		boolean b = false;
		String sql = "select * from date where username='"+username+"' and date='"+date+"'";
		Bean bean = new Bean();
		if(bean.query(sql).next()){
			b = true;
		}
		return b;
	}
	//update
	public boolean update(String username,String date,String content){
		boolean b = false;
		String sql = "update date set content='"+content+"' where username='"+username+"' and date='"+date+"'";
		Bean bean = new Bean();
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
	//delete
	public boolean delete(String username, String date){
		boolean b = false;
		String sql = "delete from date where username='"+username+"' and date='"+date+"'";
		Bean bean = new Bean();
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
}
