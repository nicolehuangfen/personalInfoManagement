package com.cn.hf.arrangement.action;

import com.cn.hf.bean.ArrangeBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport{
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
	public String execute(){
		ArrangeBean ab = new ArrangeBean();
		String username = (String) ActionContext.getContext().getSession().get("username");
		if(ab.update(username, date, content)){
			return "success";
		}else{
			return "input";
		}
	}
}
