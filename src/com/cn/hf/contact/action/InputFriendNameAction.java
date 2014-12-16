package com.cn.hf.contact.action;

import java.sql.SQLException;

import com.cn.hf.bean.FriendBean;
import com.opensymphony.xwork2.ActionSupport;

public class InputFriendNameAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String inputFriendName;
	
	public String getInputFriendName() {
		return inputFriendName;
	}

	public void setInputFriendName(String inputFriendName) {
		this.inputFriendName = inputFriendName;
	}

	public String execute() throws SQLException {
		FriendBean fb = new FriendBean();
		String sql = "select * from friends where friendName='"+this.getInputFriendName()+"'";
		if(fb.query(sql)){
			return "success";
		}else{
			return "input";
		}
	}
}
