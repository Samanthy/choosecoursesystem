package com.tarena.group3.choosecoursesystem.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.Teacher;

public class ITeacherDaoTest {

	private ApplicationContext ctx;
	
	private ITeacherDao teacherDao;
	
	@Before
	public void init(){
		ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		teacherDao = (ITeacherDao)ctx.getBean("teacherDao");
	}
	
	@Test
	public void testQueryTeacherById(){
		Teacher teacher = teacherDao.queryTeacherById(333);
		System.out.println(teacher.getTid()+","+teacher.getTname()+","+teacher.getPassword()+","+teacher.getPosition());
	}
	
	@Test
	public void testQueryTeacherByTid(){
		Teacher teacher = teacherDao.queryTeacherByTid("2004060703");
		System.out.println(teacher.getTid()+","+teacher.getTname()+","+teacher.getPassword()+","+teacher.getPosition());
	}
	
	@Test
	public void testQueryTeacherByCid(){
		Teacher teacher = teacherDao.queryTeacherByCid("07013");
		System.out.println(teacher.getTid()+","+teacher.getTname()+","+teacher.getPassword()+","+teacher.getPosition());
	}
	
	@Test
	public void testLogin(){
		Teacher teacher = teacherDao.login("2004060712", "teacher");
		System.out.println(teacher.getTid()+","+teacher.getTname()+","+teacher.getPassword()+","+teacher.getPosition());
	}
	
	@Test
	public void testUpdateTeacherPassword(){
		teacherDao.updateTeacherPassword("2004060303", "xje369");
	}
}
