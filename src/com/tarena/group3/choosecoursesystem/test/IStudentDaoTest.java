package com.tarena.group3.choosecoursesystem.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;

public class IStudentDaoTest {
	
	private ApplicationContext ctx;
	
	private IStudentDao studentDao;
	
	@Before
	public void init(){
		ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		studentDao = (IStudentDao)ctx.getBean("studentDao");
	}
	
	@Test
	public void testQueryStudentById(){
		Student student = studentDao.queryStudentById(33);
		System.out.println(student.getId()+","+student.getSid()+","+student.getSname()+","+student.getPassword()+","+student.getDepartment()+","+student.getSpecialField());
	}
	
	@Test
	public void testQueryStudentBySid(){
		Student student = studentDao.queryStudentBySid("2005060711");
		System.out.println(student.getId()+","+student.getSid()+","+student.getSname()+","+student.getPassword()+","+student.getDepartment()+","+student.getSpecialField());
	}
	
	@Test
	public void testLogin(){
		Student student = studentDao.login("2005060711", "xje369");
		System.out.println(student.getId()+","+student.getSid()+","+student.getSname()+","+student.getPassword()+","+student.getDepartment()+","+student.getSpecialField());
	}
	
	@Test
	public void testUpdateStudentPassword(){
		studentDao.updateStudentPassword("20050603331", "xje369");
	}
	
	@Test
	public void testLoadStudentCourseScore(){
		studentDao.loadStudentCourseScore("2005060709", "07002", 88);
	}
	
	@Test
	public void testQueryAllStudentScoreByCid(){
		List<StudentScoreEntity> list = studentDao.queryAllStudentScoreByCid("07002");
		for(StudentScoreEntity sse : list){
			System.out.println(sse.getCid()+","+sse.getStudent().getSid()+","+sse.getStudent().getSname()+","+sse.getScore()+","+sse.getStatus());
		}
	}
}
