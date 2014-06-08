package org.dao.imp;

import java.util.List;

import org.dao.AdminDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Admin;

public class AdminDaoImp implements AdminDao {
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}

	@Override
	public Admin validate(String name, String password) {
		// TODO �Զ����ɵķ������
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Admin where adName=? and adPassed=?");
		query.setParameter(0, name);
		query.setParameter(1, password);
		query.setMaxResults(1);
		Admin admin=(Admin)query.uniqueResult();
		if(admin!=null){
			return admin;
		}else{
			return null;
		}
	}

	@Override
	public boolean addAdmin(Admin admin) {
		// TODO �Զ����ɵķ������
		Session session=sessionFactory.getCurrentSession();
		session.save(admin);
		return true;
	}

	@Override
	public boolean update(Admin admin) {
		// TODO �Զ����ɵķ������
		Session session=sessionFactory.getCurrentSession();
		session.load(Admin.class, admin.getIdAdmin());  //��ȷ�����ݿ����Ƿ���ڸ�Ԫ�飡
		session.update(admin);
		return true;
	}

	@Override
	public boolean delete(int idAdmin) {
		// TODO �Զ����ɵķ������
		Session session=sessionFactory.getCurrentSession();
		Admin admin=(Admin)session.load(Admin.class, idAdmin);
		session.delete(admin);
		return true;
	}

	@Override
	public List getAllAdmin() {
		// TODO �Զ����ɵķ������
		Session session=sessionFactory.getCurrentSession();
		List list=session.createQuery("from Admin order by idAdmin").list();
		return list;
	}

}
