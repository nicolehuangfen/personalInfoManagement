package com.cn.hf.contact.action;

import com.cn.hf.bean.FriendBean;
import com.opensymphony.xwork2.ActionContext;

public class AddAction {
	private String username;
	private String friendName;
	private String telephone;
	private String email;
	private String workplace;
	private String address;
	private String QQ;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFriendName() {
		return friendName;
	}
	public void setFriendName(String friendName) {
		this.friendName = friendName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String execute(){
		FriendBean fb = new FriendBean();
		String username1 = (String) ActionContext.getContext().getSession().get("username");
		if(fb.addFriend(username1, friendName, telephone, email, workplace, address, QQ)){
			return "success";
		}else{
			return "input";
		}
	}
}
