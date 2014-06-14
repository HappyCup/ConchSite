package org.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.action.SongInfoAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import org.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;

public class SongInfoActionTest extends StrutsSpringTestCase{

	/*
	 * test getNewSongs method
	 * Action url: /GetNewSongsAction
	 */
	@Test
	public void testgetNewSongs() throws Exception{
		ActionProxy proxy = getActionProxy("/GetNewSongsAction");
		String result = proxy.execute();
		
		List songs = (List) request.getAttribute("newsongs");
		System.out.println(songs.size());
		assertNotNull(songs);
		assertEquals(60, songs.size());
	}
	
	/*
	 * test getHotSongs method
	 * Action url: /GetHotSongsAction
	 */
	@Test
	public void testgetHotSongs() throws Exception{
		ActionProxy proxy = getActionProxy("/GetHotSongsAction");
		String result = proxy.execute();
		
		List songs = (List) request.getAttribute("hotsongs");
		System.out.println(songs.size());
		assertNotNull(songs);
		assertEquals(60, songs.size());
	}
	
	/*
	 * test the download method
	 * Action url: DownLoad
	 * case : success
	 */
	@Test
	public void testdownload() throws Exception{
		request.setParameter("idSong", "1");
		
		ActionProxy proxy = getActionProxy("/DownLoad");
		SongInfoAction testAction = (SongInfoAction) proxy.getAction();
		User user = new User("lihuan","1234");
		Map<String, Object> sessionMap = new HashMap<String, Object>();
		sessionMap.put("user", user);
		ActionContext.getContext().setSession(sessionMap);
		
		String result = proxy.execute();
		assertNotNull(testAction.getSongStream());
		assertEquals("success",result);
	}
	
	/*
	 * test the download method
	 * Action url: DownLoad
	 * case : fail
	 */
	@Test
	public void testdownload2() throws Exception{
		request.setParameter("idSong", "1");
		
		ActionProxy proxy = getActionProxy("/DownLoad");
		SongInfoAction testAction = (SongInfoAction) proxy.getAction();
		
		String result = proxy.execute();
		assertNull(testAction.getSongStream());
		assertEquals("error",result);
	}
	
	/*
	 * test ranklist method
	 * Action url : /ranklist
	 * case : area='cn'
	 */
	@Test
	public void testRanklist1() throws Exception{
		request.setParameter("area", "cn");
		ActionProxy proxy = getActionProxy("/ranklist");
		String result = proxy.execute();
		List ranklist = (List) request.getAttribute("ranklist");
		assertNotNull(ranklist);
		assertTrue(ranklist.size()>0);
		assertEquals("success",result);
	}
	
	/*
	 * test ranklist method
	 * Action url : /ranklist
	 * case : area='eu'
	 */
	@Test
	public void testRanklist2() throws Exception{
		request.setParameter("area", "eu");
		ActionProxy proxy = getActionProxy("/ranklist");
		String result = proxy.execute();
		List ranklist = (List) request.getAttribute("ranklist");
		assertNotNull(ranklist);
		assertTrue(ranklist.size()>0);
		assertEquals("success",result);
	}
	
	/*
	 * test ranklist method
	 * Action url : /ranklist
	 * case : area='jk'
	 */
	@Test
	public void testRanklist3() throws Exception{
		request.setParameter("area", "jk");
		ActionProxy proxy = getActionProxy("/ranklist");
		String result = proxy.execute();
		List ranklist = (List) request.getAttribute("ranklist");
		assertNotNull(ranklist);
		assertTrue(ranklist.size()>0);
		assertEquals("success",result);
	}
}
