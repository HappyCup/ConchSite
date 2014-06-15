package org.test;

import org.action.SearchAction;
import org.apache.struts2.StrutsSpringTestCase;

import com.opensymphony.xwork2.ActionProxy;

public class SearchActionTest extends StrutsSpringTestCase{

	/*
	 * test method execute()
	 * Action url : search 
	 */
	public void testexecute() throws Exception{
		request.setParameter("sch_str", "2am");
		ActionProxy proxy = getActionProxy("/search");
		String result = proxy.execute();
		
		assertNotNull(request.getAttribute("result"));
		assertNotNull(request.getAttribute("pager"));
		int resultsize =  (int) request.getAttribute("resultsize");
		assertTrue(resultsize>0);
		assertEquals("success", result);
	}
}
