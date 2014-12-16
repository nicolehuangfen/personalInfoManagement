package com.cn.hf.file.action;

import java.sql.SQLException;

import com.cn.hf.bean.FileBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InputTitleAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String inputTitle;

	public String getInputTitle() {
		return inputTitle;
	}

	public void setInputTitle(String inputTitle) {
		this.inputTitle = inputTitle;
	}

	public String execute() throws SQLException {
		FileBean fb = new FileBean();
		String username = (String) ActionContext.getContext().getSession()
				.get("username");
		if (fb.queryByTitle(username, this.getInputTitle())) {
			return "success";
		} else {
			return "input";
		}
	}
}
