package org.test;

import java.util.List;

import org.action.SingerInfoAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import org.model.Singer;

import com.opensymphony.xwork2.ActionProxy;

public class SingerInfoActionTest extends StrutsSpringTestCase{

	/*
	 * test method : getSingerRank
	 * Action url : SingerRank
	 */
	@Test
	public void testgetSingerRank() throws Exception{
		ActionProxy proxy = getActionProxy("/SingerRank");
		String result = proxy.execute();
		
		List singerRank = (List) request.getAttribute("singerRank");
		assertNotNull(singerRank);
		assertTrue(singerRank.size()>0);
		assertNull(result);
	}
	
	/*
	 * test method getImg
	 * Action url : /SingerImg
	 * case singer exist
	 */
	public void testgetImg() throws Exception{
		request.setParameter("idSinger", "1");
		ActionProxy proxy = getActionProxy("/SingerImg");
		SingerInfoAction testAction = (SingerInfoAction) proxy.getAction();
		String result = proxy.execute();
		
		assertNotNull(testAction.getSingerImg());
		assertEquals("success",result);
	}
	
	/*
	 * test method getImg
	 * Action url : /SingerImg
	 * case singer not exist
	 */
	public void testgetImg2() throws Exception{
		request.setParameter("idSinger", "999");
		ActionProxy proxy = getActionProxy("/SingerImg");
		SingerInfoAction testAction = (SingerInfoAction) proxy.getAction();
		String result = proxy.execute();
		
		assertNotNull(testAction.getSingerImg());
		assertEquals("success",result);
	}
	
	/*
	 * test method SgrInAreaAndType
	 * Action url : getSingerPage
	 * case : area=all type=all pageNow=1
	 */
	public void testSgrInAreaAndType() throws Exception{
		request.setParameter("area", "all");
		request.setParameter("type", "all");
		ActionProxy proxy = getActionProxy("/getSingerPage");
		String result = proxy.execute();
		
		List singerpage = (List) request.getAttribute("singerpage");
		assertNotNull(singerpage);
		assertTrue(singerpage.size()>0);
		assertEquals("success",result);
	}
	
	/*
	 * test method SgrInAreaAndType
	 * Action url : getSingerPage
	 * case : area=cn type=m pageNow=1
	 */
	public void testSgrInAreaAndType2() throws Exception{
		request.setParameter("area", "cn");
		request.setParameter("type", "m");
		ActionProxy proxy = getActionProxy("/getSingerPage");
		String result = proxy.execute();
		
		List singerpage = (List) request.getAttribute("singerpage");
		assertNotNull(singerpage);
		assertTrue(singerpage.size()>0);
		assertEquals("success",result);
	}
	
	/*
	 * test method allSinger
	 * Action url : queryAllSinger
	 * case pageNow = default
	 */
	public void testallSinger() throws Exception{
		ActionProxy proxy = getActionProxy("/queryAllSinger");
		String result = proxy.execute();
		
		List singerpage = (List) request.getAttribute("singerpage");
		assertNotNull(singerpage);
		assertTrue(singerpage.size()>0);
		assertEquals("success",result);
	}
	
	/*
	 * test method singerHome
	 * Action url : singerHome
	 * case idSinger = 1
	 */
	public void testsingerHome() throws Exception{
		request.setParameter("idSinger", "1");
		ActionProxy proxy = getActionProxy("/singerHome");
		String result = proxy.execute();
		
		Singer singer = (Singer) request.getAttribute("singer");
		assertNotNull(singer);
		assertEquals("success",result);
	}
}
