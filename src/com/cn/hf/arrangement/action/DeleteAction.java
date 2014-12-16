package com.cn.hf.arrangement.action;

import com.cn.hf.bean.ArrangeBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String date;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String execute(){
		ArrangeBean ab = new ArrangeBean();
		String username = (String) ActionContext.getContext().getSession().get("username");
		if(ab.delete(username, this.getDate())){
			return "success";
		}else{
			return "input";
		}
	}
	
}
