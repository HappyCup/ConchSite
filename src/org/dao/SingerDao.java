package org.dao;

import java.util.List;

import org.model.Singer;

public interface SingerDao {
	public List getAll();
	public List getAll(int pageNow,int pageSize);   //分页查询
	public Singer getById(int idSinger);
	public List getByName(String name);
	public List getByArea(String area);
	public List getByAreaAndType(String area,String type,int pageNow,int pageSize);  //需要分页查询
	public List search(String name);                 //搜索函数
	public List getOrderByScore();
	public boolean add(Singer singer);
	public boolean update(Singer singer);
	public boolean delete(int idSinger);
	public int getRows(String query);               //查询符合条件的元组总数
}
