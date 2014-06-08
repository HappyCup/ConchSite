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
		adminDao.addAdmin(admin1);
		System.out.println("ok");
//		assertTrue(adminDao.addAdmin(admin1));
//		adminDao.delete(admin1.getIdAdmin());
	}

}
