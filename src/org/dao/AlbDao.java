package org.dao;

import java.util.List;

import org.model.Album;

public interface AlbDao {
	public List getAll();
	public List getAll(int pageNow,int pageSize);   //分页查询
	public Album getById(int idAlbum);
	public List getBySinger(int idSinger);
	public List getByName(String AlbName);//根据名字查找，匹配方式可改变//////////////////////////
	public List getByArea(String area,int pageNow,int pageSize);  //分页查询
	public boolean addAlb(Album alb);
	public boolean update(Album alb);
	public boolean delete(int idAlbum);
	public int getRows(String query);               //查询符合条件的元组总数
}
