package org.dao;

import java.util.List;

import org.model.Album;

public interface AlbDao {
	public List getAll();
	public List getAll(int pageNow,int pageSize);   //��ҳ��ѯ
	public Album getById(int idAlbum);
	public List getBySinger(int idSinger);
	public List getByName(String AlbName);//�������ֲ��ң�ƥ�䷽ʽ�ɸı�//////////////////////////
	public List getByArea(String area,int pageNow,int pageSize);  //��ҳ��ѯ
	public boolean addAlb(Album alb);
	public boolean update(Album alb);
	public boolean delete(int idAlbum);
	public int getRows(String query);               //��ѯ����������Ԫ������
}
