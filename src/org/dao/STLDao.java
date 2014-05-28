package org.dao;

import java.util.List;

import org.model.Storelist;
import org.model.StorelistId;

public interface STLDao {
	
	public List getAllByUser(String usName);  //得到用户的动态包括所有收藏和分享
	public List allShare();                   //所有用户的分享
	public List getOnesStore(String usName);  //得到用户的收藏
	public boolean add(Storelist stl);
	public boolean delete(Storelist stl);
}
