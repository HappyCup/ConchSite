package org.action;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.dao.SingerDao;
import org.dao.SongDao;
import org.model.Singer;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport{
	private String sch_str;   //需要搜索的字符串
	private int pageNow=1;
	
	private SingerDao singerdao;
	private SongDao songdao;
	
	private List searchResult;   //搜索结果

	public String getSch_str() {
		return sch_str;
	}

	public void setSch_str(String sch_str) {
		this.sch_str = sch_str;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public List getSearchResult() {
		return searchResult;
	}

	public void setSingerdao(SingerDao singerdao) {
		this.singerdao = singerdao;
	}

	public void setSongdao(SongDao songdao) {
		this.songdao = songdao;
	}
	
	public String execute() throws Exception{
		searchResult=new LinkedList();
		String temp=sch_str.replace(" ", "");
		if(temp.length()>0){
			List result_songs=songdao.search(sch_str);
			List result_singers=singerdao.search(sch_str);
			Iterator it=result_singers.iterator();
			while(it.hasNext()){                                     //对结果进行排序
				Singer sg=(Singer) it.next();
				if(sg.getSongs().size()>0)
					searchResult.add(sg.getSongs().toArray()[0]);
			}
			searchResult.addAll(result_songs);
			it=result_singers.iterator();
			while(it.hasNext()){
				Singer sg=(Singer) it.next();
				searchResult.addAll(sg.getSongs());
			}
		}
		Pager pager=new Pager(pageNow,20,searchResult.size());
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("result", searchResult);
		request.setAttribute("pager", pager);
		request.setAttribute("resultsize", searchResult.size());
		return SUCCESS;
	}
}
