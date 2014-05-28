package org.service;

import org.model.Admin;
import org.model.User;

/*
 *用于用户和管理员登陆时验证！ 
 */

public interface Login {
	//验证用户
	public User login(String name,String passwd);
	//管理员登陆
	//public boolean login(Admin admin);
	//获取验证消息
	public String getMsg();
}
