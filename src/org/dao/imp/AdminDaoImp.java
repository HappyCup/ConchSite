package org.dao.imp;

import java.util.List;

import org.dao.AdminDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.model.Admin;

public class AdminDaoImp implements AdminDao {
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}

	@Override
	public Admin validate(String name, String password) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Query query=session.createQuery("from Admin where adName=? and adPassed=?");
			query.setParameter(0, name);
			query.setParameter(1, password);
			query.setMaxResults(1);
			Admin admin=(Admin)query.uniqueResult();
			ts.commit();
			if(admin!=null){
				return admin;
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean addAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.save(admin);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Admin admin) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			session.load(Admin.class, admin.getIdAdmin());  //先确定数据库中是否存在该元组！
			session.update(admin);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int idAdmin) {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			Admin admin=(Admin)session.load(Admin.class, idAdmin);
			session.delete(admin);
			ts.commit();
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List getAllAdmin() {
		// TODO 自动生成的方法存根
		try{
			Session session=sessionFactory.getCurrentSession();
			Transaction ts=session.beginTransaction();
			List list=session.createQuery("from Admin order by idAdmin").list();
			ts.commit();
			return list;
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
