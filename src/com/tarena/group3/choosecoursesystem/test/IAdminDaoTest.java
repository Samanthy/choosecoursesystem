package com.tarena.group3.choosecoursesystem.test;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.IAdminDao;
import com.tarena.group3.choosecoursesystem.domain.Admin;

public class IAdminDaoTest {
	
	private ApplicationContext ctx;
	
	private IAdminDao adminDao;
	
	@Before
	public void init(){
		ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		adminDao = (IAdminDao)ctx.getBean("adminDao");
	}
	
	@Test
	public void testUpdateAdminPassword(){
		boolean flag = adminDao.updateAdminPassword("2003060711","xje369");
		System.out.println(flag);
	}
	
	@Test
	public void testAdminLogin(){
		Admin admin = adminDao.adminLogin("20030607111", "safas");
		System.out.println(admin.getAid()+","+admin.getAname()+","+admin.getPassword());
	}
	
}
