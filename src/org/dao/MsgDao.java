package org.dao;

import java.util.List;

import org.model.Message;

public interface MsgDao {
	public List getAllMsg();
	public Message getById(int id);
	public boolean update(Message msg);
	public boolean addMsg(Message msg);
	public boolean deleteMsg(int idMsg);
}
