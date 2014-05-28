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
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();//openSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Singer order by sgrName").list();//����ʽ���޸�///////
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List getAll(int pageNow, int pageSize) {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();//openSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Singer order by sgrName");//����ʽ���޸�///////
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
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
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
	
	//��ҳ��ѯ
	@Override
	public List getByAreaAndType(String area, String type,int pageNow,int pageSize) {
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Singer.class,singer.getIdSinger());  //��ȷ�����ݿ����Ƿ���ڸ�Ԫ�飡
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
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
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

	
	//��ѯ����������Ԫ������
	@Override
	public int getRows(String query) {
		// TODO �Զ����ɵķ������
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
		// TODO �Զ����ɵķ������
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
