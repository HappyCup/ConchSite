package org.dao;

import java.util.List;

import org.model.Singer;

public interface SingerDao {
	public List getAll();
	public List getAll(int pageNow,int pageSize);   //��ҳ��ѯ
	public Singer getById(int idSinger);
	public List getByName(String name);
	public List getByArea(String area);
	public List getByAreaAndType(String area,String type,int pageNow,int pageSize);  //��Ҫ��ҳ��ѯ
	public List search(String name);                 //��������
	public List getOrderByScore();
	public boolean add(Singer singer);
	public boolean update(Singer singer);
	public boolean delete(int idSinger);
	public int getRows(String query);               //��ѯ����������Ԫ������
}
