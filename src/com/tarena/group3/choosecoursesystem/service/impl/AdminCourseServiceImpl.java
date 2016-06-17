package com.tarena.group3.choosecoursesystem.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;
import com.tarena.group3.choosecoursesystem.domain.Teacher;
import com.tarena.group3.choosecoursesystem.service.IAdminCourseService;

/**
 * 管理员课程管理Service实现类
 * @author xiexiujie
 *
 */
public class AdminCourseServiceImpl implements IAdminCourseService {
	
	private IStudentDao studentDao;
	
	private ITeacherDao teacherDao;
	
	private ICourseDao courseDao;
	
	public ICourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(ICourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public IStudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public ITeacherDao getTeacherDao() {
		return teacherDao;
	}

	public void setTeacherDao(ITeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	/**
	 * 更新课程
	 * @param course
	 * @return
	 */
	public boolean updateCourse(Course course){
		return courseDao.update(course);
	}
	
	/**
	 * 插入新的课程。
	 * @param course
	 * @return
	 */
	public boolean insertCourse(Course course){
		return courseDao.insert(course);
	}
	
	/**
	 * 删除某门课程。
	 * @param id
	 * @return
	 */
	public boolean deleteCourse(Integer id){
		return courseDao.delete(id);
	}
	
	/**
	 * 查看所有的课程
	 * @return
	 */
	public List<Course> getAllCourses(){
		return courseDao.queryAllCourseByRequired(new Date(System.currentTimeMillis()), "", "", "", "");
	}
	
	/**
	 * 根据老师的姓名得到老师的详细信息
	 * @param tname
	 * @return
	 */
	public Teacher queryTeacherByTid(String tid){
		return teacherDao.queryTeacherByTid(tid);
	}
	
	/**
	 * 根据课程的cid查出该课程的详细信息。
	 * @return
	 */
	public Course queryCourseByCid(String cid){
		return courseDao.queryCourseByCid(cid);
	}
	
	/**
	 * 根据给定的课程编号，课程名称，教师编号，教师名称模糊查询结课时间比now晚的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tid
	 * @param tname
	 * @return
	 */
	public List<Course> queryAllCourseByRequired(Date now, String cid,
			String cname, String tid, String tname){
		return courseDao.queryAllCourseByRequired(now, cid, cname, tid, tname);
	}
	
	/**
	 * 根据课程的cid查找该课的代课老师。
	 * @param cid
	 * @return
	 */
	public Teacher queryTeacherByCourseCid(String cid){
		return teacherDao.queryTeacherByCid(cid);
	}
	
	/**
	 *查询某门课程所有的学生和他的成绩,封装成StudentScoreEntity
	 * @param cid
	 * @return
	 */
	public List<StudentScoreEntity> queryAllStudentsByCourseCid(String cid){
		return studentDao.queryAllStudentScoreByCid(cid);
	}
	
	/**
	 * 修改学生某门课的成绩，修改完毕后将status设为1
	 * @param sid
	 * @param cid
	 * @param score
	 */
	public void updateStudentScore(String cid, String sid, double score){
		studentDao.loadStudentCourseScore(sid, cid, score);
	}

	/**
	 * 查看传入的课程cid是否与已有课程的cid是否重复，并且查看传入的课程名称cname是否与已有课程的名称重复，
	 * 只要有一个与已有课程重复就返回false
	 * 如果已有课程中不存在该cid和cname，那么返回true，即可以使用该cid和cname。
	 * @param cid
	 * @return
	 */
	public boolean ifCidNotExist(String cid) {
		Course course = courseDao.queryCourseByCid(cid);
		if(course==null){
			return true;
		}
		return false;
	}

	/**
	 * 查找在指定的时间内（指定了日期，星期和时间段）没课的老师
	 * @param startDate
	 * @param endDate
	 * @param schoolTime
	 * @param week
	 * @return
	 */
	public List<Teacher> queryFeeTeachersInRequiredTime(Date startDate, Date endDate, String schoolTime, String week) {
		return null;
	}

	 
	public static void main(String[] args){
		ApplicationContext ctx = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
		AdminCourseServiceImpl adminCourseService = (AdminCourseServiceImpl)ctx.getBean("adminCourseService");
		
	}

}
