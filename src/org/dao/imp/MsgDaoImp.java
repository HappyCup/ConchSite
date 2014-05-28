package org.dao.imp;

import java.util.List;

import org.dao.MsgDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Message;

public class MsgDaoImp implements MsgDao {
	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public List getAllMsg() {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Message order by msTime").list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean deleteMsg(int idMsg) {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Message msg=(Message)session.load(Message.class, idMsg);
			session.delete(msg);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addMsg(Message msg) {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(msg);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Message getById(int id) {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Message where idMessage=?");
			query.setParameter(0, id);
			query.setMaxResults(1);
			Message msg=(Message)query.uniqueResult();
			ts.commit();
			return msg;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean update(Message msg) {
		// TODO �Զ����ɵķ������
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Message.class,msg.getIdMessage());  //��ȷ�����ݿ����Ƿ���ڸ�Ԫ�飡
			session.update(msg);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
