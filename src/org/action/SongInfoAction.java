package org.action;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.dao.SingerDao;
import org.dao.SongDao;
import org.model.Singer;
import org.model.Song;
import org.tool.AccessSongFile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SongInfoAction extends ActionSupport{
	private Integer idSong;
	private String sgName;
	private String sgrName;
	//private ByteArrayInputStream songStream;
	private InputStream songStream;
	private SongDao songdao;
	private SingerDao singerdao;
	private String sgftype;            //歌曲文件类型
	private List sort_cn;               //华语
	private List sort_eu;               //欧美
	private List sort_jk;               //日韩
	private List ranklist;              //排行榜
	private String area;                //地域
	
	public InputStream getSongStream() {
		return songStream;
	}

	public void setIdSong(Integer idSong) {
		this.idSong = idSong;
	}

	public String getSgName() {
		return sgName;
	}

	public void setSgName(String sgName) {
		this.sgName = sgName;
	}

	public String getSgftype() {
		return sgftype;
	}

	public void setSgftype(String sgftype) {
		this.sgftype = sgftype;
	}

	public List getSort_cn() {
		return sort_cn;
	}

	public List getSort_eu() {
		return sort_eu;
	}

	public List getSort_jk() {
		return sort_jk;
	}

	public void setSongdao(SongDao songdao) {
		this.songdao = songdao;
	}

	public void setSingerdao(SingerDao singerdao) {
		this.singerdao = singerdao;
	}

	public String getSgrName() {
		return sgrName;
	}

	public void setSgrName(String sgrName) {
		this.sgrName = sgrName;
	}

	public List getRanklist() {
		return ranklist;
	}

	public void setRanklist(List rinklist) {
		this.ranklist = rinklist;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	//地域排行榜
	public String RinkList() throws UnsupportedEncodingException{
//		System.out.println(area);
		if(area.equals("cn"))
			area="华语";
		if(area.equals("jk"))
			area="日韩";
		if(area.equals("eu"))
			area="欧美";
//		area=new String(area.getBytes("iso-8859-1"),"utf-8");
//		System.out.println(area);
		ranklist=songdao.getHotInArea(area, 50);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("ranklist", ranklist);
		return SUCCESS;
	}
	
	
	private Map getSongsByArea(String area,int max){
		Map map=new HashMap<Singer,Song>();
		List list=singerdao.getByArea(area);
		Iterator t1=list.iterator();
		int i=0;
		while(t1.hasNext()&&i<max){
			Singer s=(Singer) t1.next();
			Set songset=s.getSongs();
			if(songset!=null&&songset.size()>0){
				Iterator t2=songset.iterator();
				map.put(s, t2.next());
//				System.out.print(s.getSgrName()+"--");
			}
			++i;
		}
		return map;
	}
	
	
	public String getSongDataById(){
		Song song=songdao.getById(idSong);
		String route=song.getSgRoute();
		try{
			AccessSongFile ac=AccessSongFile.getInstance();
			this.songStream = ac.getSongStream(route);
//			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			
//			InputStream input = new BufferedInputStream(new FileInputStream(route));
			
//			byte[] bt = new byte[128];
//			while (input.read(bt) > 0) {
//				bos.write(bt);
//			}
//			this.songStream = new ByteArrayInputStream(bos.toByteArray());
//			bos.close();
//			input.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		if(route.endsWith("weba"))
			return "weba";
		else
			return "mp3";
	}
	
	//新歌榜
	public void getNewSongs(){
		List newsongs=songdao.getOrderByTime();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("newsongs", newsongs);
	}
	
	//热歌榜
	public void getHotSongs(){
		List hotsongs=songdao.getOrderByScore();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("hotsongs", hotsongs);
	}
	
	//下载歌曲
	public String download(){
		Map session=(Map)ActionContext.getContext().getSession();
		if(session.get("user")==null)
			return ERROR;
		getSongDataById();
		return SUCCESS;
	}
}
