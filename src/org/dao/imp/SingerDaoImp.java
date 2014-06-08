package org.dao.imp;

import java.util.List;

import org.dao.SingerDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.Singer;

public class SingerDaoImp implements SingerDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAll() {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();// openSession();
		List list = session.createQuery("from Singer order by sgrName").list();// 排序方式可修改///////
		return list;
	}

	@Override
	public List getAll(int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();// openSession();
		Query query = session.createQuery("from Singer order by sgrName");// 排序方式可修改///////
		query.setFirstResult(pageNow * pageSize - pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}

	@Override
	public List getByName(String name) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Singer where sgrName=?");
		query.setParameter(0, name);
		List list = query.list();
		return list;
	}

	@Override
	public List getByArea(String area) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Singer where sgrArea=?");
		query.setParameter(0, area);
		List list = query.list();
		return list;
	}

	// 分页查询
	@Override
	public List getByAreaAndType(String area, String type, int pageNow,
			int pageSize) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from Singer where sgrArea=? and sgrType=? order by sgrScore desc");
		query.setParameter(0, area);
		query.setParameter(1, type);
		query.setFirstResult(pageNow * pageSize - pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}

	@Override
	public List getOrderByScore() {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from Singer order by sgrScore desc")
				.list();
		return list;
	}

	@Override
	public boolean add(Singer singer) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.save(singer);
		return true;
	}

	@Override
	public boolean update(Singer singer) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.load(Singer.class, singer.getIdSinger()); // 先确定数据库中是否存在该元组！
		session.update(singer);
		return true;
	}

	@Override
	public boolean delete(int idSinger) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Singer singer = (Singer) session.load(Singer.class, idSinger);
		session.delete(singer);
		return true;
	}

	@Override
	public Singer getById(int idSinger) {
		// TODO 自动生成的方法存根

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Singer where idSinger=?");
		query.setParameter(0, idSinger);
		query.setMaxResults(1);
		Singer singer = (Singer) query.uniqueResult();
		return singer;
	}

	// 查询符合条件的元组总数
	@Override
	public int getRows(String query) {
		// TODO 自动生成的方法存根
		int totalRows = 0;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery(query);
		Long i = (Long) q.iterate().next();
		totalRows = new Integer(String.valueOf(i));
		// totalRows=(Integer) session.createQuery(query).list().get(0);
		return totalRows;
	}

	@Override
	public List search(String name) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Singer where sgrName like ?");
		query.setParameter(0, "%" + name + "%");
		List list = query.list();
		return list;
	}

}
