package com.cn.hf.file.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.cn.hf.bean.FileBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private File upload;
	private String uploadFileName;
	private String savePath;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String execute() throws Exception {
		// 以服务器的文件保存地址和原文件名建立上传文件输出流
		// System.out.println("---getSavepath:" + getSavePath());
		// System.out.println("-----getUploadFileName:" + getUploadFileName());
		String username = (String) ActionContext.getContext().getSession()
				.get("username");
		String type = uploadFileName.substring(uploadFileName.indexOf(".")+1,
				uploadFileName.length());
		FileBean fb = new FileBean();
		if (fb.insertFile(username, this.getTitle(), uploadFileName, type,
				this.getSavePath())) {
			FileOutputStream fos = new FileOutputStream(getSavePath() + "\\"
					+ getUploadFileName());
			// 定义输出流对象
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) > 0) {
				fos.write(buffer, 0, len);
			}
			fos.close();
			return "success";
		}else{
			return "input";
		}
		
	}
}
