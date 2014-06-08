package org.dao.imp;

import java.util.List;

import org.dao.AlbDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Album;

public class AlbDaoImp implements AlbDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAll() {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from Album order by idAlbum").list();
		return list;
	}

	@Override
	public Album getById(int idAlbum) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Album where idAlbum=?");
		query.setParameter(0, idAlbum);
		query.setMaxResults(1);
		Album album = (Album) query.uniqueResult();
		if (album != null) {
			return album;
		} else {
			return null;
		}
	}

	@Override
	public List getBySinger(int idSinger) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select stl from Storelist as stl where idSinger=?");
		query.setParameter(0, idSinger);
		List list = query.list();
		return list;
	}

	@Override
	public List getByName(String AlbName) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select stl from Album as stl where abName=?");// 目前是完全匹配;;;;
		query.setParameter(0, AlbName);
		List list = query.list();
		return list;
	}

	@Override
	public boolean addAlb(Album alb) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.save(alb);
		return true;
	}

	@Override
	public boolean update(Album alb) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.load(Album.class, alb.getIdAlbum()); // 先确定数据库中是否存在该元组！
		session.update(alb);
		return true;
	}

	@Override
	public boolean delete(int idAlbum) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Album album = (Album) session.load(Album.class, idAlbum);
		session.delete(album);
		return true;
	}

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
	public List getAll(int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();// openSession();
		Query query = session.createQuery("from Album order by abScore");// 排序方式可修改///////
		query.setFirstResult(pageNow * pageSize - pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}

	@Override
	public List getByArea(String area, int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from Album as album where album.singer.sgrArea=?  order by abScore desc");
		query.setParameter(0, area);
		query.setFirstResult(pageNow * pageSize - pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}

}
