package com.cn.hf.contact.action;

import java.sql.SQLException;

import com.cn.hf.bean.FriendBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QueryAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private String queryInp;
	
	public String getQueryInp() {
		return queryInp;
	}

	public void setQueryInp(String queryInp) {
		this.queryInp = queryInp;
	}

	public String execute() throws SQLException{
		FriendBean fb = new FriendBean();
		if(fb.queryByName(this.getQueryInp()).next() || fb.queryByTel(this.getQueryInp()).next()){
			return "success";
		}else{
			return "input";
		}
	}
}
