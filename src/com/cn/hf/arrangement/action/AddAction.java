package com.cn.hf.arrangement.action;

import java.sql.SQLException;

import com.cn.hf.bean.ArrangeBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String date;
	private String content;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String execute() throws SQLException{
		ArrangeBean ab = new ArrangeBean();
		String username = (String) ActionContext.getContext().getSession().get("username");
		
		if(ab.add(username, this.getDate(),this.getContent())){
			return "success";
		}else{
			return "input";
		}
	}
}
