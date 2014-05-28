package org.dao.imp;

import java.util.List;

import org.dao.UserDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.User;

public class UserDaoImp implements UserDao {

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public User validate(String name, String password) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from User where usName=? and usPasswd=?");
			query.setParameter(0, name);
			query.setParameter(1, password);
			query.setMaxResults(1);
			User user=(User)query.uniqueResult();
			ts.commit();
			if(user!=null){
				return user;
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addUser(User user) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(user);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(User user) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(User.class, user.getUsName());  //先确定数据库中是否存在该元组！
			session.update(user);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(String userName) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			User user=(User)session.load(User.class, userName);
			session.delete(user);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List getAllUser() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from User").list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public User validate(String name) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from User where usName=?");
			query.setParameter(0, name);
			query.setMaxResults(1);
			User user=(User)query.uniqueResult();
			ts.commit();
			if(user!=null){
				return user;
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
