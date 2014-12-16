package com.cn.hf.arrangement.action;

import java.sql.SQLException;

import com.cn.hf.bean.ArrangeBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InputDateAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String inputDate;

	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}

	public String execute() throws SQLException {
		ArrangeBean ab = new ArrangeBean();
		String username = (String) ActionContext.getContext().getSession()
				.get("username");
		if (ab.queryByDate(username, this.getInputDate()))
			return "success";
		else
			return "input";
	}
}
