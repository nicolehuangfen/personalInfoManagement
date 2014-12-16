package com.cn.hf.action;

import com.cn.hf.bean.UserBean;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;// 用户名
	private String password;// 密码
	private String repassword;
	private String name;// 真实姓名
	private String sex;// 性别
	private String birthday;// 生日
	private String nation;// 民族
	private String edu;// 学历
	private String work;// 工作
	private String telephone;// 电话
	private String address;// 家庭住址
	private String email;// 邮箱

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String execute() {
		UserBean userbean = new UserBean();
		boolean b = userbean.register(this.username, this.password, this.name,
				this.sex, this.birthday, this.nation, this.edu, this.work,
				this.telephone, this.address, this.email);
		if (b) {
			return "success";
		} else {
			return "input";
		}
	}

	@Override
	public void validate() {
		//register validate
		UserBean userbean = new UserBean();
		
		if(this.getUsername() == null || this.getUsername().length() == 0){
			addFieldError("username","用户名不能为空！");
		}else if(this.getUsername().length() < 6){
			addFieldError("username", "用户名长度不小于6！");
		}else if(userbean.queryUserName(this.getUsername())){
			addFieldError("username","该用户名已存在！");
		}else if(this.getPassword() == null || this.getPassword().length() == 0){
			addFieldError("password","密码不能为空！");
		}else if(this.getPassword().length() < 6){
			addFieldError("password", "密码长度不小于6");
		}else if(!this.getPassword().equals(this.getRepassword())){
			addFieldError("repassword","两次输入的密码不一致");
		}else if(this.getBirthday() == null || this.getBirthday().length() == 0){
			addFieldError("birthday","用户生日不为空");
		}else if(this.getBirthday().length() != 8){
			addFieldError("birthday","用户生日格式为yyyyMMdd!");
		}
	}
	
}
