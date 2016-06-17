package com.tarena.group3.choosecoursesystem.service;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.Student;

/**
 * 学生预选课程Service接口
 * @author xiexiujie
 *
 */
public interface IFirstChooseCourseSerivce {
	
	/**
	 * 根据学生的学号在临时表中查询该学生所选的课程
	 * @param sid
	 * @return
	 */
	Set<Course> queryCourseBySidForFirstChoose(String sid);

	/**
	 * 根据学生主键和课程主键在临时表中插入所选的课程
	 * @param sid
	 * @param cid
	 */
	void firstChooseCourse(Integer sid,Integer cid);
	
	/**
	 * 根据学生主键和课程主键在临时表中删除所选的课程
	 * @param sid
	 * @param cid
	 */
	void cancleFirstChoose(Integer sid,Integer cid);
	/**
	 * 根据给定的课程编号，课程名称，教师名称模糊查询结课时间比now晚的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tname
	 * @return
	 */
	List<ChooseCourseEntity> queryAllCourseForFirstChooseCourse(Date now,String cid,String cname,String tname);

	/**
	 * 修改学生的密码
	 * @param sid
	 * @param password
	 */
	void updateStudentPassword(String sid,String password);
	/**
	 * 根据学号查找学生
	 * @param sid
	 * @return
	 */
	Student queryStudentBySid(String sid);
}
