package com.cn.hf.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBean {
	private String username;//用户名
	private String password;//密码
	private String repassword;
	private String name;//真实姓名
	private String sex;//性别
	private String birthday;//生日
	private String nation;//民族
	private String edu;//学历
	private String work;//工作
	private String telephone;//电话
	private String address;//家庭住址
	private String email;//邮箱
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	//登录功能
	public boolean login(String username, String password) throws SQLException{
		boolean b = false;
		Bean bean = new Bean();
		ResultSet rs = null;
		String sql = "select * from user where username='"+username+"' and password='"+password+"'";
		rs = bean.query(sql);
		if(rs.next() == true){
			b = true;
		}
		return b;
	}
	//注册功能
	public boolean register(String username, String password, String name,String sex,String birthday, String nation, String edu, String work, String telephone, String address, String email){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "insert into user values('"+username+"','"+password+"','"+name+"','"+sex+"','"+birthday+"','"+nation+"','"+edu+"','"+work+"','"+telephone+"','"+address+"','"+email+"')";
		if(this.getPassword() == this.getRepassword() && bean.update(sql)){
			b = true;
		}
		return b;
	}
	//查询用户名功能
	public boolean queryUserName(String username){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "select * from user where username='"+username+"'";
		ResultSet rs = null;
		rs = bean.query(sql);
		try {
			if(rs.next() == true){
				b = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	//更新功能
	public boolean update(String username,String name,String sex,String birthday, String nation, String edu, String work, String telephone, String address, String email){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "update user set name='"+name+"',sex='"+sex+"',birthday='"+birthday+"',nation='"+nation+"',edu='"+edu+"',work='"+work+"',telephone='"+telephone+"',address='"+address+"',email='"+email+"' where username='"+username+"'";
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
	//修改密码
	public boolean updatePsw(String username,String password,String newpassword){
		boolean b = false;
		Bean bean = new Bean();
		String sql = "update user set password='"+newpassword+"' where username='"+username+"'";
		if(bean.update(sql)){
			b = true;
		}
		return b;
	}
}
