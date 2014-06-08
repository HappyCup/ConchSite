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
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}

	@Override
	public List getAll() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Album order by idAlbum").list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Album getById(int idAlbum) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Album where idAlbum=?");
			query.setParameter(0, idAlbum);
			query.setMaxResults(1);
			Album album=(Album)query.uniqueResult();
			ts.commit();
			if(album!=null){
				return album;
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getBySinger(int idSinger) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("select stl from Storelist as stl where idSinger=?");
			query.setParameter(0, idSinger);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getByName(String AlbName) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("select stl from Album as stl where abName=?");//目前是完全匹配;;;;
			query.setParameter(0, AlbName);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addAlb(Album alb) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(alb);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Album alb) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Album.class,alb.getIdAlbum());  //先确定数据库中是否存在该元组！
			session.update(alb);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int idAlbum) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Album album=(Album)session.load(Album.class, idAlbum);
			session.delete(album);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int getRows(String query) {
		// TODO 自动生成的方法存根
		int totalRows=0;
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query q=session.createQuery(query);
			Long i=(Long) q.iterate().next();
			totalRows= new Integer(String.valueOf(i));
//			totalRows=(Integer) session.createQuery(query).list().get(0);
			ts.commit();
		}catch (Exception e){
			e.printStackTrace();
			return totalRows;
		}
		return totalRows;
	}

	@Override
	public List getAll(int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();//openSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Album order by abScore");//排序方式可修改///////
			query.setFirstResult(pageNow*pageSize-pageSize);
			query.setMaxResults(pageSize);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getByArea(String area, int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Album as album where album.singer.sgrArea=?  order by abScore desc");
			query.setParameter(0, area);
			query.setFirstResult(pageNow*pageSize-pageSize);
			query.setMaxResults(pageSize);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
