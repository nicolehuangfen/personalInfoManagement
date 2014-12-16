package com.cn.hf.personal.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cn.hf.bean.Bean;
import com.cn.hf.bean.UserBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePasswordAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String password;
	private String newpassword;
	private String renewpassword;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public String getRenewpassword() {
		return renewpassword;
	}

	public void setRenewpassword(String renewpassword) {
		this.renewpassword = renewpassword;
	}

	@Override
	public void validate() {
		Bean bean = new Bean();
		ResultSet rs = null;
		String username = (String) ActionContext.getContext().getSession()
				.get("username");
		String sql = "select * from user where username='" + username + "'";
		rs = bean.query(sql);
		try {
			if (rs.next()) {
				if (!rs.getString(2).equals(this.getPassword())) {
					addFieldError("password","输入的原密码错误！");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(this.getNewpassword()==null || "".equals(this.getNewpassword())){
			addFieldError("newpassword","新密码不能为空");
		}
		else if (!this.getNewpassword().equals(this.getRenewpassword())) {
			addFieldError("renewpassword", "两次输入的密码不一致");
		}
	}

	public String execute() {
		UserBean userbean = new UserBean();
		String username = (String) ActionContext.getContext().getSession()
				.get("username");
		if (userbean.updatePsw(username, password, newpassword)) {
			return "success";
		} else {
			return "input";
		}
	}
}
