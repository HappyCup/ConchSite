package org.service;

import org.model.User;

public interface UserEdit {
	 //�����û�
	public boolean save(User user);
	//�޸��û�
	public boolean update(User user);
	//ɾ���û�
	public boolean delete(User user);
	//��ȡ��Ϣ
	public String getMsg();
}
