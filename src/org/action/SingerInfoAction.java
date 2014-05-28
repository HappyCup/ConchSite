package org.action;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.dao.SingerDao;
import org.model.Singer;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionSupport;

public class SingerInfoAction extends ActionSupport{
	private int idSinger;
	private String area="all";          //Ĭ����all ��ʱӦ�����������еĸ���
	private String type="all";              //m:��,f:Ů,z:�ֶ����  Ĭ����all ��ʱӦ�����������еĸ���
	private String areaq,typeq;       //ת������ַ�
	private int pageNow=1;
	private SingerDao singerdao;

	private ByteArrayInputStream singerImg;
	
	public ByteArrayInputStream getSingerImg() {
		return singerImg;
	}

	public void setSingerImg(ByteArrayInputStream singerImg) {
		this.singerImg = singerImg;
	}

	public int getIdSinger() {
		return idSinger;
	}

	public void setIdSinger(int idSinger) {
		this.idSinger = idSinger;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public SingerDao getSingerdao() {
		return singerdao;
	}

	public void setSingerdao(SingerDao singerdao) {
		this.singerdao = singerdao;
	}
	
	public void getSingerRank(){
		List singerRank=singerdao.getOrderByScore();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("singerRank", singerRank);
	}

	public String getImg() throws Exception{
		Singer singer=singerdao.getById(idSinger);
		if(singer!=null && singer.getSgrPhoto()!=null){
			singerImg=new ByteArrayInputStream(singer.getSgrPhoto());
		}
		else{
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		InputStream input = new BufferedInputStream(new FileInputStream("C:/Users/HP/workspace/ConchSite/WebContent/image/head-default.jpg"));
		byte[] bt = new byte[1024];
		while (input.read(bt) > 0) {
			bos.write(bt);
		}
		this.singerImg = new ByteArrayInputStream(bos.toByteArray());
		bos.close();
		input.close();
		}
		return SUCCESS;
	}
	
	private void preaction(){
		if(area.equals("cn"))
			areaq="����";
		if(area.equals("jk"))
			areaq="�պ�";
		if(area.equals("eu"))
			areaq="ŷ��";
		if(type.equals("f"))
			typeq="Ů";
		if(type.equals("m"))
			typeq="��";
		if(type.equals("z"))
			typeq="�ֶ����";
	}
	//���ݵ�������Ͳ�ѯ
	public String SgrInAreaAndType() throws Exception{
		preaction();
		int nums=singerdao.getRows("select count(*) from Singer as singer where singer.sgrArea='"+areaq+"'"+" and singer.sgrType='"+typeq+"'");
		List singerpage=singerdao.getByAreaAndType(areaq, typeq, pageNow, 21);
		Pager pager=new Pager(pageNow,21,nums);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("singerpage", singerpage);
		request.setAttribute("pager", pager);
		return SUCCESS;
	}
	
	public String allSinger() throws Exception{
		int nums=singerdao.getRows("select count(*) from Singer as singer");
		List singerpage=singerdao.getAll(pageNow, 21);
		Pager pager=new Pager(pageNow,21,nums);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("singerpage", singerpage);
		request.setAttribute("pager", pager);
		return SUCCESS;
	}
	
	//���������ҳ,�鿴������ϸ��Ϣ
	public String singerHome() throws Exception{
		Singer singer=singerdao.getById(idSinger);
		Pager pager=new Pager(pageNow,15,singer.getSongs().size());
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("singer", singer);
		request.setAttribute("pager", pager);
		return SUCCESS;
	}
}
