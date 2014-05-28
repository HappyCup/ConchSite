package org.dao;

import java.util.List;

import org.model.Admin;

public interface AdminDao {
	public Admin validate(String name,String password);
	public boolean addAdmin(Admin admin);
	public boolean update(Admin admin);
	public boolean delete(int idAdmin);
	public List getAllAdmin();
}
