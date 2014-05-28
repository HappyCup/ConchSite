package org.action;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;

import org.dao.UserDao;
import org.model.User;
import org.tool.ImageCut;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	private String username;
	private String userpasswd;
	private UserDao userdao;
	private ByteArrayInputStream inputStream;
	private File picfile;
	private int img_x;
	private int img_y;
	private int img_w;
	private int img_h;
	
	public void setImg_x(int img_x) {
		this.img_x = img_x;
	}
	public void setImg_y(int img_y) {
		this.img_y = img_y;
	}
	public void setImg_w(int img_w) {
		this.img_w = img_w;
	}
	public void setImg_h(int img_h) {
		this.img_h = img_h;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpasswd() {
		return userpasswd;
	}
	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}
	public UserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}
	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}
	
	public File getPicfile() {
		return picfile;
	}
	public void setPicfile(File picfile) {
		this.picfile = picfile;
	}
	public String getImg(){
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		if(user!=null && user.getUsPhoto()!=null){
				inputStream=new ByteArrayInputStream(user.getUsPhoto());
		}
		else{
			try{
				ByteArrayOutputStream bos = new ByteArrayOutputStream();
				InputStream input = new BufferedInputStream(new FileInputStream("C:/Users/HP/workspace/ConchSite/WebContent/image/head-default.jpg"));
				byte[] bt = new byte[1024];
				while (input.read(bt) > 0) {
					bos.write(bt);
				}
				this.inputStream = new ByteArrayInputStream(bos.toByteArray());
				bos.close();
				input.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	//根据username获取用户图片
	public String getUserImg(){
//		Map session=(Map)ActionContext.getContext().getSession();
//		User user=(User)session.get("user");
		User user=userdao.validate(username);
		if(user!=null && user.getUsPhoto()!=null){
				inputStream=new ByteArrayInputStream(user.getUsPhoto());
		}
		else{
			try{
				ByteArrayOutputStream bos = new ByteArrayOutputStream();
				InputStream input = new BufferedInputStream(new FileInputStream("C:/Users/HP/workspace/ConchSite/WebContent/image/head-default.jpg"));
				byte[] bt = new byte[1024];
				while (input.read(bt) > 0) {
					bos.write(bt);
				}
				this.inputStream = new ByteArrayInputStream(bos.toByteArray());
				bos.close();
				input.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return SUCCESS;
	}
	
	//上传头像
	public String updateAvator()throws Exception{
		if(this.getPicfile()!=null){
			ImageCut.imagecut(picfile, img_x, img_y, img_w, img_h,300,300);
			FileInputStream fis=new FileInputStream(this.getPicfile());
			byte[] buffer=new byte[fis.available()];
			fis.read(buffer);
			
			Map session=(Map)ActionContext.getContext().getSession();
			User user=(User) session.get("user");
			user.setUsPhoto(buffer);
			userdao.update(user);
			
			//System.out.println("success////////////////////////////////////");
		}
		return SUCCESS;
	}
	
}
