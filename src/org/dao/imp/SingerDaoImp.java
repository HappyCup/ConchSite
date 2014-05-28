package org.dao.imp;

import java.util.List;

import org.dao.SingerDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Singer;

public class SingerDaoImp implements SingerDao {

	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public List getAll() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();//openSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Singer order by sgrName").list();//排序方式可修改///////
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getAll(int pageNow, int pageSize) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();//openSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer order by sgrName");//排序方式可修改///////
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
	public List getByName(String name) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer where sgrName=?");
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
	public List getByArea(String area) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer where sgrArea=?");
			query.setParameter(0, area);
			List list=query.list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	//分页查询
	@Override
	public List getByAreaAndType(String area, String type,int pageNow,int pageSize) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer where sgrArea=? and sgrType=? order by sgrScore desc");
			query.setParameter(0, area);
			query.setParameter(1, type);
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
	public List getOrderByScore() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Singer order by sgrScore desc").list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean add(Singer singer) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(singer);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Singer singer) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Singer.class,singer.getIdSinger());  //先确定数据库中是否存在该元组！
			session.update(singer);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int idSinger) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Singer singer=(Singer)session.load(Singer.class, idSinger);
			session.delete(singer);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Singer getById(int idSinger) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer where idSinger=?");
			query.setParameter(0, idSinger);
			query.setMaxResults(1);
			Singer singer=(Singer)query.uniqueResult();
			ts.commit();
			return singer;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	
	//查询符合条件的元组总数
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
	public List search(String name) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer where sgrName like ?");
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
