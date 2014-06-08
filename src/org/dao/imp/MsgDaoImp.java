package org.dao.imp;

import java.util.List;

import org.dao.MsgDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.model.Message;

public class MsgDaoImp implements MsgDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getAllMsg() {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		List list = session.createQuery("from Message order by msTime").list();
		return list;
	}

	@Override
	public boolean deleteMsg(int idMsg) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		Message msg = (Message) session.load(Message.class, idMsg);
		session.delete(msg);
		return true;
	}

	@Override
	public boolean addMsg(Message msg) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		session.save(msg);
		return true;
	}

	@Override
	public Message getById(int id) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Message where idMessage=?");
		query.setParameter(0, id);
		query.setMaxResults(1);
		Message msg = (Message) query.uniqueResult();
		return msg;
	}

	@Override
	public boolean update(Message msg) {
		// TODO �Զ����ɵķ������
		Session session = sessionFactory.getCurrentSession();
		session.load(Message.class, msg.getIdMessage()); // ��ȷ�����ݿ����Ƿ���ڸ�Ԫ�飡
		session.update(msg);
		return true;
	}

}
