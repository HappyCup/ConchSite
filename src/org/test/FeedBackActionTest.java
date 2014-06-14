package org.test;

import java.util.HashMap;
import java.util.Map;
import org.action.FeedBackAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import org.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;

public class FeedBackActionTest extends StrutsSpringTestCase{

	@Override
    protected void setUp() throws Exception {
        super.setUp();
    }
	
	@Test
	public void testExecute() throws Exception{
		request.setParameter("fbContent", "testfbContent");
		request.setParameter("contactInfo", "testcontactInfo");
		
		ActionProxy proxy = getActionProxy("/feedback");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
        ActionContext.getContext().setSession(sessionMap);
        
		String result = proxy.execute();
		assertEquals("success", result);
	}
	
	public void test2Execute() throws Exception{
		User user = new User("lihuan","1234");
		
		request.setParameter("fbContent", "testfbContent");
		request.setParameter("contactInfo", "testcontactInfo");
		
		ActionProxy proxy = getActionProxy("/feedback");
		
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
        ActionContext.getContext().setSession(sessionMap);
        
		String result = proxy.execute();
		assertEquals("success", result);
	}
}
