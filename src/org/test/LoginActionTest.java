package org.test;

import java.util.HashMap;
import java.util.Map;

import org.action.LoginAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import org.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;

public class LoginActionTest extends StrutsSpringTestCase{

	/*
	 * test the execute method
	 * Action url: /login
	 * case : username = godlike userpasswd = 123456
	 */
	@Test
	public void testexecute() throws Exception {
		request.setParameter("username", "godlike");
		request.setParameter("userpasswd", "123456");
		
		ActionProxy proxy = getActionProxy("/login");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		ActionContext.getContext().setSession(sessionMap);
		
		LoginAction loginAction = (LoginAction) proxy.getAction();
		String result = proxy.execute();
		User user = (User) sessionMap.get("user");
		
		assertNotNull(user);
		assertEquals("godlike",user.getUsName());
		assertEquals("success", result);
	}
	
	/*
	 * test method logout()
	 * Action url : /logout
	 */
	public void testlogout() throws Exception{
		User user = new User("godlike","123456");
		ActionProxy proxy = getActionProxy("/logout");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		String result = proxy.execute();
		User userback = (User) sessionMap.get("user");
		
		assertNull(userback);
		assertEquals("success", result);
	}
	
	/*
	 * test method isLogin()
	 * Action url: /islogin
	 * case : logined
	 */
	public void testisLogin() throws Exception{
		User user = new User("godlike","123456");
		ActionProxy proxy = getActionProxy("/islogin");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		LoginAction loginAction = (LoginAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("0",loginAction.getValiResult());
		assertEquals("success", result);
	}
	
	/*
	 * test method isLogin()
	 * Action url : /islogin
	 * case : did not login
	 */
	public void testisLogin2() throws Exception{
		ActionProxy proxy = getActionProxy("/islogin");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		ActionContext.getContext().setSession(sessionMap);
		
		LoginAction loginAction = (LoginAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("1",loginAction.getValiResult());
		assertEquals("success", result);
	}
	
	/*
	 * test method updatePassword()
	 * Action url : /updatePasswd
	 * case : old password is right
	 */
	public void testupdatePassword() throws Exception{
		request.setParameter("newpasswd", "1234567");
		
		User user = new User("godlikes","123456");
		ActionProxy proxy = getActionProxy("/islogin");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		LoginAction loginAction = (LoginAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("0",loginAction.getValiResult());
		assertEquals("1234567",user.getUsPasswd());
		assertEquals("success", result);
	}
	
	/*
	 * test method updatePassword()
	 * Action url : /updatePasswd
	 * case : old password is wrong
	 */
	public void testupdatePassword2() throws Exception{
		request.setParameter("newpasswd", "1234567");
		
		User user = new User("godlikes","12345");
		ActionProxy proxy = getActionProxy("/islogin");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		LoginAction loginAction = (LoginAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("1",loginAction.getValiResult());
		assertEquals("123456",user.getUsPasswd());
		assertEquals("success", result);
	}
}
