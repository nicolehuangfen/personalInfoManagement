package com.cn.hf.file.action;

import com.cn.hf.bean.FileBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String execute(){
		FileBean fb = new FileBean();
		String username = (String) ActionContext.getContext().getSession().get("username");
		if(fb.delete(username, this.getTitle())){
			return "success";
		}else{
			return "input";
		}
	}

}
