package org.test;

import java.util.List;

import javax.annotation.Resource;

import org.dao.AdminDao;
import org.junit.runner.RunWith;
import org.junit.Test;
import org.model.Admin;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;
import org.junit.Assert;
import org.junit.Assert;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")

public class AdminDaoTest extends AbstractTransactionalJUnit4SpringContextTests{
	
	@Resource(name="AdminDao")
	private AdminDao adminDao;
	
	//@Test
	public void testAddAdmin1(){
		Admin admin1=new Admin("test1","no",1);
		admin1.setAdName("add_test");
		assertTrue(adminDao.addAdmin(admin1));	
		adminDao.delete(admin1.getIdAdmin());
	}
	
	//@Test
	public void testUpdateAdmin(){
		Admin admin2=new Admin("test2","123",1);
		adminDao.addAdmin(admin2);
		admin2.setAdName("update_test");
		admin2.setAdPassed("123");
		admin2.setAdType(2);
		assertTrue(adminDao.update(admin2));	
		adminDao.delete(admin2.getIdAdmin());
	}
	
	//@Test
	public void testDeleteAdmin(){
		Admin admin3=new Admin("test3","123",1);
		adminDao.addAdmin(admin3);
		assertTrue(adminDao.delete(admin3.getIdAdmin()));
	}
	//@Test
	public void testValidate1(){
		Admin admin4=new Admin("test4","123",1);
		adminDao.addAdmin(admin4);
		assertNotNull(adminDao.validate("test4", "123"));
		adminDao.delete(admin4.getIdAdmin());
	}
	//@Test
	public void testValidate2(){
		Admin admin4=new Admin("test4","123",1);
		adminDao.addAdmin(admin4);
		assertNull(adminDao.validate("test3", "123"));
		adminDao.delete(admin4.getIdAdmin());
	}
	
	@Test
	public void testGetAllAdmin(){
		List list=adminDao.getAllAdmin();
		assertEquals(list.size(),4);
	}

}
