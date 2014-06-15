package org.test;

import org.action.AlbumInfoAction;
import org.apache.struts2.StrutsSpringTestCase;
import org.junit.Test;
import com.opensymphony.xwork2.ActionProxy;

public class AlbumInfoActionTest extends StrutsSpringTestCase  {
	@Override
    protected void setUp() throws Exception {
        super.setUp();
    }

	
	@Test
	public void testalbumHome() throws Exception {
		request.setParameter("idAlbum", "1");
		ActionProxy proxy = getActionProxy("/albumHome");
		String result = proxy.execute();
		Object album =  request.getAttribute("album");
		assertNotNull(album);
		assertEquals("success", result);
	}
	
	@Test
	public void testAlbumInArea() throws Exception {
		request.setParameter("area", "eu");
		request.setParameter("pageNow", "1");
		ActionProxy proxy = getActionProxy("/getAlbumPage");
		assertNotNull(proxy);
		String result = proxy.execute();
		Object albumpage =  request.getAttribute("albumpage");
		assertNotNull(albumpage);
		Object pager =  request.getAttribute("pager");
		assertNotNull(pager);
		assertEquals("success", result);
	}
	
	@Test
	public void testallAlbum() throws Exception {
		request.setParameter("pageNow", "1");
		ActionProxy proxy = getActionProxy("/queryAllAlbum");
		assertNotNull(proxy);
		String result = proxy.execute();
		Object albumpage =  request.getAttribute("albumpage");
		assertNotNull(albumpage);
		Object pager =  request.getAttribute("pager");
		assertNotNull(pager);
		assertEquals("success", result);
	}
	
	/*
	 * test method getImg
	 * Action url /AlbumImg
	 * case album exist and has photo
	 */
	@Test
	public void testgetImg() throws Exception {
		request.setParameter("idAlbum", "1");
		ActionProxy proxy = getActionProxy("/AlbumImg");
		assertNotNull(proxy);
		AlbumInfoAction test = (AlbumInfoAction) proxy.getAction();
		String result = proxy.execute();
		assertNotNull(test.getAlbumImg());
		assertEquals("success", result);
	}
	
	/*
	 * test method getImg
	 * Action url /AlbumImg
	 * case album not exist
	 */
	@Test
	public void testgetImg2() throws Exception {
		request.setParameter("idAlbum", "999");
		ActionProxy proxy = getActionProxy("/AlbumImg");
		assertNotNull(proxy);
		AlbumInfoAction test = (AlbumInfoAction) proxy.getAction();
		String result = proxy.execute();
		assertNotNull(test.getAlbumImg());
		assertEquals("success", result);
	}
}
