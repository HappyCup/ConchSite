package org.dao.imp;

import java.util.List;

import org.dao.CmtDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.Comment;

public class CmtDaoImp implements CmtDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAllBySong(int idSong) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Comment where idSong=?");
		query.setParameter(0, idSong);
		List list = query.list();
		return list;
	}

	@Override
	public boolean addCmt(Comment cmt) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		session.save(cmt);
		return true;
	}

	@Override
	public boolean deleteCmt(int idCmt) {
		// TODO 自动生成的方法存根
		Session session = sessionFactory.getCurrentSession();
		Comment cmt = (Comment) session.load(Comment.class, idCmt);
		session.delete(cmt);
		return true;
	}

}
