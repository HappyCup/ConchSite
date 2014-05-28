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
		// TODO �Զ����ɵķ������
		return msg;
	}

	@Override
	public User login(String name, String passwd) {
		// TODO �Զ����ɵķ������
		return userDao.validate(name, passwd);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
