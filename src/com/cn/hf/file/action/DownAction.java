package com.cn.hf.file.action;

import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.struts2.ServletActionContext;

import com.cn.hf.bean.Bean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DownAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String path;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	//该方法返回一个InputStream类型的输入流，是下载目标文件的入口
	public InputStream getInputStream(){
		return ServletActionContext.getServletContext().getResourceAsStream(path);
	}
	public String execute() throws SQLException{
		String username = (String) ActionContext.getContext().getSession().get("username");
		Bean bean = new Bean();
		String sql = "select * from file where username='"+username+"' and title='"+title+"'";
		ResultSet rs = bean.query(sql);
		if(rs.next()){
			path = "/save/" + rs.getString(3);
			return "success";
		}else{
			return "input";
		}
	}
}
