package org.test;

import java.util.HashMap;
import java.util.Map;

import org.action.RegisteAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;

public class RegisteActionTest extends StrutsSpringTestCase {
	@Override
	protected void setUp() throws Exception {
		super.setUp();
	}
	@Test
	public void testexecute() throws Exception {
		request.setParameter("username", "Shang");
		request.setParameter("userpasswd", "123456");
		request.setParameter("useremail", "123456@qq.com");
		ActionProxy proxy = getActionProxy("/Registe");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
        ActionContext.getContext().setSession(sessionMap);
		
		String result = proxy.execute();
		assertEquals("success", result);
	}
	
	/*
	 * test method validateUserName()
	 * Action url : /UserNameValidate
	 * case : user exist
	 */
	@Test
	public void testvalidateUserName() throws Exception {
		request.setParameter("username", "lihuan");
		ActionProxy proxy = getActionProxy("/UserNameValidate");
		
		RegisteAction test = (RegisteAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("1",test.getValiResult());
		assertEquals("success", result);
	}
	
	/*
	 * test method validateUserName()
	 * Action url : /UserNameValidate
	 * case : user not exist
	 */
	@Test
	public void testvalidateUserName2() throws Exception {
		request.setParameter("username", "usernotexist");
		ActionProxy proxy = getActionProxy("/UserNameValidate");
		
		RegisteAction test = (RegisteAction) proxy.getAction();
		String result = proxy.execute();
		
		assertEquals("0",test.getValiResult());
		assertEquals("success", result);
	}
}
