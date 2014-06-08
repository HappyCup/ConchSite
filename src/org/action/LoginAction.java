package org.action;

import java.util.Map;

import org.dao.UserDao;
import org.model.User;
import org.service.Login;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private String username;
	private String newpasswd;
	private String userpasswd;
	
	private UserDao userdao;
	
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
	public String getNewpasswd() {
		return newpasswd;
	}
	public void setNewpasswd(String newpasswd) {
		this.newpasswd = newpasswd;
	}
	public String getUserpasswd() {
		return userpasswd;
	}
	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}
	
	public String getValiResult() {
		return valiResult;
	}
	public void setValiResult(String valiResult) {
		this.valiResult = valiResult;
	}
	public String execute()throws Exception{
		User user=getUserdao().validate(username, userpasswd);
		if(user!=null){
			Map session=(Map)ActionContext.getContext().getSession();
			session.put("user", user);
			int i=1/0;
			valiResult="0";        //µÇÂ¼
		}
		else{
			valiResult="1";        //Î´µÇÂ¼
		}
		return SUCCESS;
	}
	
	public String logout()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	
	public String isLogin()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		if(session.get("user")==null)
				valiResult="1";        //Î´µÇÂ¼
			else
				valiResult="0";        //µÇÂ¼
		return SUCCESS;
	}
	
	//ÐÞ¸ÄÃÜÂë
	public String updatePassword()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		if(!userpasswd.equals(user.getUsPasswd())){
			valiResult="1";
		}
		else{
			valiResult="0";
			user.setUsPasswd(newpasswd);
			userdao.update(user);
		}
		return SUCCESS;
	}
}
