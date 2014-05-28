package org.action;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.dao.AlbDao;
import org.model.Album;
import org.model.Singer;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionSupport;

public class AlbumInfoAction extends ActionSupport{
	private int idAlbum;
	private String area;
	private int pageNow=1;
	
	private AlbDao albumdao;
	
	private ByteArrayInputStream albumImg;

	private String areaq;       //转换后的字符

	public int getIdAlbum() {
		return idAlbum;
	}

	public void setIdAlbum(int idAlbum) {
		this.idAlbum = idAlbum;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public ByteArrayInputStream getAlbumImg() {
		return albumImg;
	}

	public void setAlbumdao(AlbDao albumdao) {
		this.albumdao = albumdao;
	}
	
	//获取专辑图片
	public String getImg() throws Exception{
		Album album=albumdao.getById(idAlbum);
		if(album!=null && album.getAbPhoto()!=null){
			albumImg=new ByteArrayInputStream(album.getAbPhoto());
		}
		else{
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		InputStream input = new BufferedInputStream(new FileInputStream("C:/Users/HP/workspace/ConchSite/WebContent/image/head-default.jpg"));
		byte[] bt = new byte[1024];
		while (input.read(bt) > 0) {
			bos.write(bt);
		}
		this.albumImg = new ByteArrayInputStream(bos.toByteArray());
		bos.close();
		input.close();
		}
		return SUCCESS;
	}
	
	private void preaction(){
		if(area.equals("cn"))
			areaq="华语";
		if(area.equals("jk"))
			areaq="日韩";
		if(area.equals("eu"))
			areaq="欧美";
	}
	
	//根据地域查询
	public String AlbumInArea(){
		preaction();
		int nums=albumdao.getRows("select count(*) from Album as album where album.singer.sgrArea='"+areaq+"'");
		List albumpage=albumdao.getByArea(areaq, pageNow, 12);
		Pager pager=new Pager(pageNow,12,nums);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("albumpage", albumpage);
		request.setAttribute("pager", pager);
		return SUCCESS;
	}
	
	public String allAlbum(){
		int nums=albumdao.getRows("select count(*) from Album as album");
		List albumpage=albumdao.getAll(pageNow, 12);
		Pager pager=new Pager(pageNow,12,nums);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("albumpage", albumpage);
		request.setAttribute("pager", pager);
		return SUCCESS;
	}
	
	//进入专辑主页,查看专辑详细信息
	public String albumHome() throws Exception{
		Album album=albumdao.getById(idAlbum);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("album", album);
		return SUCCESS;
	}
}
