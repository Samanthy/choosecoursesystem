package com.tarena.group3.choosecoursesystem.service;

import java.sql.Date;
import java.util.List;

import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;
import com.tarena.group3.choosecoursesystem.domain.Teacher;

/**
 * 管理员课程管理Service接口
 * @author xiexiujie
 *
 */
public interface IAdminCourseService {

	/**
	 * 更新课程
	 * @param course
	 * @return
	 */
	boolean updateCourse(Course course);
	
	/**
	 * 插入新的课程。
	 * @param course
	 * @return
	 */
	boolean insertCourse(Course course);
	
	/**
	 * 删除某门课程。
	 * @param id
	 * @return
	 */
	boolean deleteCourse(Integer id);
	
	/**
	 * 查看所有的课程
	 * @return
	 */
	List<Course> getAllCourses();
	
	/**
	 * 根据给定的课程编号，课程名称，教师编号，教师名称模糊查询结课时间比now晚的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tid
	 * @param tname
	 * @return
	 */
	List<Course> queryAllCourseByRequired(Date now, String cid,
			String cname, String tid, String tname);
	
	/**
	 * 根据课程的cid查找该课的代课老师。
	 * @param cid
	 * @return
	 */
	Teacher queryTeacherByCourseCid(String cid);
	
	/**
	 *查询某门课程所有的学生和他的成绩,封装成StudentScoreEntity
	 * @param cid
	 * @return
	 */
	List<StudentScoreEntity> queryAllStudentsByCourseCid(String cid);
	
	/**
	 * 修改学生某门课的成绩，修改完毕后将status设为1
	 * @param sid
	 * @param cid
	 * @param score
	 */
	void updateStudentScore(String cid, String sid, double score);
	
	/**
	 * 根据课程的cid查出该课程的详细信息。
	 * @return
	 */
	Course queryCourseByCid(String cid);
	
	/**
	 * 根据老师的姓名得到老师的详细信息
	 * @param tname
	 * @return
	 */
	Teacher queryTeacherByTid(String tid);
	
	/**
	 * 查看传入的课程cid是否与已有课程的cid是否重复
	 * 如果重复就返回false
	 * 如果不重复就返回true，即可以使用该cid
	 * @param cid
	 * @return
	 */
	boolean ifCidNotExist(String cid);
	
	/**
	 * 查找在指定的时间内（指定了日期，星期和时间段）没课的老师
	 * @param startDate
	 * @param endDate
	 * @param schoolTime
	 * @param week
	 * @return
	 */
	List<Teacher> queryFeeTeachersInRequiredTime(Date startDate, Date endDate, String schoolTime, String week);

}
