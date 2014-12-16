package com.cn.hf.personal.action;

import com.cn.hf.bean.UserBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String username;// 用户名
	private String password;// 密码
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

	public String execute() {
		System.out.println("-----execute----");
		UserBean userbean = new UserBean();
		String username1 = (String) ActionContext.getContext().getSession().get("username");
		System.out.println(username1);
		boolean b = userbean.update(username1,name, sex, birthday, nation, edu, work,
				telephone, address, email);
		if (b) {
			return "success";
		} else {
			return "input";
		}
	}
}
