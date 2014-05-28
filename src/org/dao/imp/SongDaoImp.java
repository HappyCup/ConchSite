package org.dao.imp;

import java.util.List;

import org.dao.SongDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Song;

public class SongDaoImp implements SongDao {
	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public Song getById(int idSong) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Song where idSong=?");
			query.setParameter(0, idSong);
			query.setMaxResults(1);
			Song song=(Song)query.uniqueResult();
			ts.commit();
			if(song!=null){
				return song;
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getByName(String name) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Song where sgName=?");
			query.setParameter(0, name);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getByType(String type) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Song where sgType=?");
			query.setParameter(0, type);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getAll() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Song").list();//排序方式可修改///////
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getOrderByScore() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Song order by sgScore desc").list();//可以设置最大查询量
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean add(Song song) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(song);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Song song) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Song.class,song.getIdSong());  //先确定数据库中是否存在该元组！
			session.update(song);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int idSong) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Song song=(Song)session.load(Song.class, idSong);
			session.delete(song);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List getOrderByTime() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Song order by sgTime asc").list();//可以设置最大查询量
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getHotInArea(String area, int max) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("select song from Song song join song.singers sg where sg.sgrArea=? order by song.sgScore desc");
			query.setParameter(0, area);
			query.setMaxResults(max);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List search(String name) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Song where sgName like ?");
			query.setParameter(0, "%"+name+"%");
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
