package org.service;

import org.model.Admin;
import org.model.User;

/*
 *�����û��͹���Ա��½ʱ��֤�� 
 */

public interface Login {
	//��֤�û�
	public User login(String name,String passwd);
	//����Ա��½
	//public boolean login(Admin admin);
	//��ȡ��֤��Ϣ
	public String getMsg();
}
