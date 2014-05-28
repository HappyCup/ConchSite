package org.dao;

import java.util.List;

import org.model.User;

public interface UserDao {
	public User validate(String name,String password);
	public User validate(String name);
	public boolean addUser(User user);
	public boolean update(User user);
	public boolean delete(String userName);
	public List getAllUser();
}
