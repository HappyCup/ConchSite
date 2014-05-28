package org.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.dao.STLDao;
import org.dao.SongDao;
import org.dao.UserDao;
import org.model.Storelist;
import org.model.User;

import com.opensymphony.xwork2.ActionContext;
/*
 * ���������ղ�
 */
import com.opensymphony.xwork2.ActionSupport;

public class ShareAndStoreAction extends ActionSupport{
	private int idSong;
	private String sharecont;
	
	private STLDao stldao;
	private SongDao songdao;
	private UserDao userdao;
	public void setStldao(STLDao stldao) {
		this.stldao = stldao;
	}

	public void setSongdao(SongDao songdao) {
		this.songdao = songdao;
	}

	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}

	public String getSharecont() {
		return sharecont;
	}

	public void setSharecont(String sharecont) {
		this.sharecont = sharecont;
	}

	public int getIdSong() {
		return idSong;
	}

	public void setIdSong(int idSong) {
		this.idSong = idSong;
	}
	
	//����ղ�
	public String store(){
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		Storelist stl=new Storelist();
		stl.setUser(user);
		stl.setSong(songdao.getById(idSong));
		stl.setRelation("store");
		stldao.add(stl);
		return SUCCESS;
	}

	//��ӷ���
	
	public String addShare(){
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		Storelist stl=new Storelist();
		stl.setUser(userdao.validate(user.getUsName()));
		stl.setSong(songdao.getById(idSong));
		stl.setRelation("share");
		stl.setShareCont(sharecont);
		stldao.add(stl);
		return SUCCESS;
	}
	//������
	public String shareArea(){
		List allsharelist=stldao.allShare();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("allsharelist", allsharelist);
		return SUCCESS;
	}
	
	//���˶�̬
	public String userMotions(){
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		List usremoslist=stldao.getAllByUser(user.getUsName());
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("usremoslist", usremoslist);
		return SUCCESS;
	}
	
	//��ȡ�ղ��б�
	public String getStorelist(){
		Map session=(Map)ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		if(user!=null){
			List storelist=stldao.getOnesStore(user.getUsName());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("storelist", storelist);
		}
		return SUCCESS;
	}
}
