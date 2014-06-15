package org.test;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.action.UserAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;

public class UserActionTest extends StrutsSpringTestCase{

	/*
	 * test method getUserImg()
	 * Action url: GetUserImg
	 * case use exist and have a photo
	 */
	public void testgetUserImg() throws Exception{
		request.setParameter("username", "lihuan");
		
		ActionProxy proxy = getActionProxy("/GetUserImg");
		UserAction userAction = (UserAction) proxy.getAction();
		
		String result = proxy.execute();
		
		assertNotNull(userAction.getInputStream());
		assertEquals("success", result);
	}
	
	/*
	 * test method getUserImg()
	 * Action url : GetUserImg
	 * case use not exist
	 */
	public void testgetUserImg2() throws Exception{
		request.setParameter("username", "usernotexist");
		
		ActionProxy proxy = getActionProxy("/GetUserImg");
		UserAction userAction = (UserAction) proxy.getAction();
		
		String result = proxy.execute();
		
		assertNotNull(userAction.getInputStream());
		assertEquals("success", result);
	}
	
	/*
	 * test method getImg()
	 * Action url : GetImg
	 */
	public void testgetImg() throws Exception{
		ActionProxy proxy = getActionProxy("/GetImg");
		User user = new User("lihuan","1234");
		user.setUsPhoto(new byte[10]);
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		UserAction userAction = (UserAction) proxy.getAction();
		String result = proxy.execute();
		 
		assertNotNull(userAction.getInputStream());
		assertEquals("success", result);
		
	}
	
	/*
	 * test method getImg()
	 * Action url : GetImg
	 */
	public void testgetImg2() throws Exception{
		ActionProxy proxy = getActionProxy("/GetImg");
		User user = new User("godlikes","123456");
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		UserAction userAction = (UserAction) proxy.getAction();
		String result = proxy.execute();
		 
		assertNotNull(userAction.getInputStream());
		assertEquals("success", result);
		
	}
	
	/*
	 * test method updateAvator()
	 * Action url : updateAvator
	 */
	public void testupdateAvator() throws Exception{
		 request.setParameter("img_x", "0");
		 request.setParameter("img_y", "0");
		 request.setParameter("img_w", "32");
		 request.setParameter("img_h", "32");
		 File picfile= new File("WebContent/image/head-default.jpg");
	     User user = new User("godlikes","123456");
	     
	     ActionProxy proxy = getActionProxy("/updateAvator");
	     Map<String, Object> sessionMap = new HashMap<String, Object>();
		 sessionMap.put("user", user);
		 ActionContext.getContext().setSession(sessionMap);
		 UserAction userAction = (UserAction) proxy.getAction();
		 userAction.setPicfile(picfile);
		 String result = proxy.execute();
		 
		 assertNotNull(user.getUsPhoto());
		 assertEquals("success", result);
	}
}
