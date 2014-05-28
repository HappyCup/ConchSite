package org.dao;

import java.util.List;

import org.model.Storelist;
import org.model.StorelistId;

public interface STLDao {
	
	public List getAllByUser(String usName);  //�õ��û��Ķ�̬���������ղغͷ���
	public List allShare();                   //�����û��ķ���
	public List getOnesStore(String usName);  //�õ��û����ղ�
	public boolean add(Storelist stl);
	public boolean delete(Storelist stl);
}
