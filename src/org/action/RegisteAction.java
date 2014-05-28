package org.action;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.dao.UserDao;
import org.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisteAction extends ActionSupport{
	private UserDao userdao;
	private String username;
	private String userpasswd;
	private String useremail;
	private String valiResult;
	public UserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
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
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	
	public String getValiResult() {
		return valiResult;
	}
	public void setValiResult(String valiResult) {
		this.valiResult = valiResult;
	}
	
	public String validateUserName(){
		User user=userdao.validate(username);
		if(user!=null)
			valiResult="1";        //´æÔÚ
		else
			valiResult="0";        //²»´æÔÚ
		return SUCCESS;
	}
	
	public String execute()throws Exception{
		User user=new User();
		user.setUsName(username);
		user.setUsPasswd(userpasswd);
		user.setUsEmail(useremail);
		if(userdao.addUser(user)){
			Map session=(Map)ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}else
			return ERROR;
	}
}
