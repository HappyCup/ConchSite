package org.dao.imp;

import java.util.List;

import org.dao.STLDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.Storelist;

public class STLDaoImp implements STLDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAllByUser(String usName) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select stl from Storelist as stl where stl.user.usName=? order by stTime desc");
		query.setParameter(0, usName);
		List list = query.list();
		return list;
	}

	@Override
	public boolean add(Storelist stl) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.save(stl);
		return true;
	}

	@Override
	public boolean delete(Storelist stl) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Storelist stl1 = (Storelist) session.load(Storelist.class,
				stl.getIdStore());
		session.delete(stl1);
		return true;
	}

	@Override
	public List allShare() {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select stl from Storelist as stl where stl.relation='share' order by stTime desc");
		List list = query.list();
		return list;
	}

	@Override
	public List getOnesStore(String usName) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select stl from Storelist as stl where stl.user.usName=? and stl.relation='store' order by stTime desc");
		query.setParameter(0, usName);
		List list = query.list();
		return list;
	}
}
