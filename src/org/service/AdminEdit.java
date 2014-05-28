package org.service;

import org.model.Admin;

public interface AdminEdit {
	public boolean save(Admin admin);
	public boolean update(Admin admin);
	public boolean delete(Admin admin);
	public String getMsg();
}
