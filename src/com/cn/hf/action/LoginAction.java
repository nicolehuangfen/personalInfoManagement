package com.cn.hf.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.cn.hf.bean.UserBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;//用户名
	private String password;//密码
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
	public String execute() throws SQLException{
		UserBean userbean = new UserBean();
		if(userbean.login(this.getUsername(), this.getPassword())){
			ActionContext.getContext().getSession().put("username", this.getUsername());
			return "success";
		}else{
			return "input";
		}
	}
	@Override
	public void validate() {
		//login validate
		UserBean userbean = new UserBean();
		if(this.getUsername() == null || this.getUsername().length() == 0){
			addFieldError("username","用户名不能为空！");
		}else if(this.getPassword() == null || this.getPassword().length() == 0){
			addFieldError("password","密码不能为空！");
		}else{
			try {
				if(!userbean.login(this.getUsername(), this.getPassword())){
					addFieldError("username","用户名或者密码错误");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
