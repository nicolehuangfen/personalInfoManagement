package com.cn.hf.contact.action;

import com.cn.hf.bean.FriendBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String friendName;
	
	public String getFriendName() {
		return friendName;
	}

	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}

	public String execute(){
		FriendBean fb = new FriendBean();
		String username = (String) ActionContext.getContext().getSession().get("username");
		if(fb.del(friendName, username)){
			return "success";
		}else{
			return "input";
		}
	}
}
