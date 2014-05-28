package org.service;

import org.model.User;

public interface UserEdit {
	 //保存用户
	public boolean save(User user);
	//修改用户
	public boolean update(User user);
	//删除用户
	public boolean delete(User user);
	//获取消息
	public String getMsg();
}
