package org.dao.imp;

import java.util.List;

import org.dao.UserDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.User;

public class UserDaoImp implements UserDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User validate(String name, String password) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from User where usName=? and usPasswd=?");
		query.setParameter(0, name);
		query.setParameter(1, password);
		query.setMaxResults(1);
		User user = (User) query.uniqueResult();
		return user;
	}

	@Override
	public boolean addUser(User user) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
		return true;
	}

	@Override
	public boolean update(User user) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		session.load(User.class, user.getUsName()); // ��ȷ�����ݿ����Ƿ���ڸ�Ԫ�飡
		session.update(user);
		return true;
	}

	@Override
	public boolean delete(String userName) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.load(User.class, userName);
		session.delete(user);
		return true;
	}

	@Override
	public List getAllUser() {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from User").list();
		return list;
	}

	@Override
	public User validate(String name) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where usName=?");
		query.setParameter(0, name);
		query.setMaxResults(1);
		User user = (User) query.uniqueResult();
		return user;
	}

}
