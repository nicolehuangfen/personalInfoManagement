package com.cn.hf.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class FriendBean {
	//add 联系人
	public boolean addFriend(String username,String friendName, String telephone, String email, String workplace, String address, String QQ){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "insert into friends values('"+username+"','"+friendName+"','"+telephone+"','"+email+"','"+workplace+"','"+address+"','"+QQ+"')";
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
	//update 联系人
	public boolean updateFriend(String username, String friendName, String telephone, String email, String workplace, String address, String QQ){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "update friends set telephone='"+telephone+"',email='"+email+"',workplace='"+workplace+"',address='"+address+"',QQ='"+QQ+"' where username='"+username+"'and friendName='"+friendName+"'" ;
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
	//通过sql语句查询
	public boolean query(String sql) throws SQLException{
		boolean b = false;
		Bean bean = new Bean();
		if(bean.query(sql).next()){
			b = true;
		}
		return b;
	}
	//通过名字查询
	public ResultSet queryByName(String friendName1){
		ResultSet rs = null;
		Bean bean = new Bean();
		String sql = "select * from friends where friendName='"+friendName1+"'";
		rs = bean.query(sql);
		return rs;
	}
	//通过电话号码查询
	public ResultSet queryByTel(String tel){
		ResultSet rs = null;
		Bean bean = new Bean();
		String sql = "select * from friends where telephone='"+tel+"'";
		rs = bean.query(sql);
		return rs;
	}
	//删除联系人
	public boolean del(String friendName,String username){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "delete from friends where friendName='"+friendName+"' and username='"+username+"'";
		if(bean.update(sql)){
			b = true;
		}
		return b;
		
	}
}
