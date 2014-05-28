package org.service.imp;

import org.dao.AdminDao;
import org.dao.UserDao;
import org.model.Admin;
import org.model.User;
import org.service.Login;

public class LoginImp implements Login {
	private String msg;
	private UserDao userDao;

	@Override
	public String getMsg() {
		// TODO 自动生成的方法存根
		return msg;
	}

	@Override
	public User login(String name, String passwd) {
		// TODO 自动生成的方法存根
		return userDao.validate(name, passwd);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
