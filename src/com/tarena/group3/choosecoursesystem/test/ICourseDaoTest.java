package com.tarena.group3.choosecoursesystem.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;

public class ICourseDaoTest {
	private ApplicationContext ctx;
	
	private ICourseDao courseDao;
	
	@Before
	public void init(){
		ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		courseDao = (ICourseDao)ctx.getBean("courseDao");
	}
	
	@Test
	public void testQueryCourseById(){
		Course course = courseDao.queryCourseById(1);
		System.out.println(course.getId()+","+course.getCid()+","+course.getCname()+","+course.getStartDate()+","
				+course.getEndDate()+","+course.getSchoolTime()+","+course.getWeek()+","+course.getCredit()+","+course.getRoom().getRname()+","+course.getTeacher().getTname());
	}
	
	@Test
	public void testQueryAllCourseForFirstChooseCourse(){
		List<ChooseCourseEntity> cceList = courseDao.queryAllCourseForFirstChooseCourse(new java.sql.Date(System.currentTimeMillis()), "07002", "", "");
		for(ChooseCourseEntity cce : cceList){
			System.out.println(cce.getHasChooseNum()+","+cce.getCourse());
		}
	}
	
	@Test
	public void testQueryAllCourseForSecondChooseCourse(){
		List<ChooseCourseEntity> cceList = courseDao.queryAllCourseForSecondChooseCourse(new java.sql.Date(System.currentTimeMillis()), "", "", "");
		for(ChooseCourseEntity cce : cceList){
			System.out.println(cce.getHasChooseNum()+","+cce.getCourse());
		}
	}
}
