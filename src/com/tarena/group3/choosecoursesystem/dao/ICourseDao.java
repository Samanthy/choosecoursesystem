package com.tarena.group3.choosecoursesystem.dao;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;

/**
 * 课程Dao
 * @author group3
 *
 */
public interface ICourseDao {
	
	/**
	 * 根据主键查询课程
	 * @param id
	 * @return
	 */
	Course queryCourseById(Integer id);
	
	/**
	 * 根据课程编号查询课程
	 * @param cid
	 * @return
	 */
	Course queryCourseByCid(String cid);
	
	/**
	 * 插入新课程
	 * @param course
	 * @return
	 */
	boolean insert(Course course);
	
	/**
	 * 更新课程
	 * @param course
	 * @return
	 */
	boolean update(Course course);
	
	/**
	 * 删除课程
	 * @param id
	 * @return
	 */
	boolean delete(Integer id);
	
	/**
	 * 根据给定的课程编号，课程名称，教师编号，教师名称模糊查询结课时间比now晚的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tid
	 * @param tname
	 * @return
	 */
	List<Course> queryAllCourseByRequired(Date now,String cid,String cname,String tid,String tname);
	
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
	 * 根据课程主键在临时表中查询选择该门课程的人数
	 * @param id
	 * @return
	 */
	int queryChooseNumForFirstChooseCourse(Integer id);
	
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
	 * 根据学生的学号在学生课程表中查询该学生所选的没有成绩且结课时间比目前晚的课程
	 * @param sid
	 * @return
	 */
	Set<Course> queryCourseBySidForSecondChoose(String sid);
	
	/**
	 * 根据学生主键和课程主键在学生课程表中插入所选的课程
	 * 如果学生已选两门返回false
	 * 如果课程已满返回false
	 * @param sid
	 * @param cid
	 */
	boolean secondChooseCourse(Integer sid,Integer cid);
	
	/**
	 * 根据学生主键和课程主键在学生课程表中删除所选的课程
	 * @param sid
	 * @param cid
	 */
	void cancleSecondChoose(Integer sid,Integer cid);

	/**
	 * 根据给定的课程编号，课程名称，教师名称模糊查询结课时间比now晚且未满的所有课程
	 * @param now
	 * @param cid
	 * @param cname
	 * @param tname
	 * @return
	 */
	List<ChooseCourseEntity> queryAllCourseForSecondChooseCourse(Date now,String cid,String cname,String tname);
	
	/**
	 * 根据课程主键在学生课程表中查询选择该门课程的人数
	 * @param cid
	 * @return
	 */
	int queryChooseNumForSecondChooseCourse(Integer id);
	
	/**
	 * 根据学生的学号查询学生已有成绩的所有课程
	 * @param sid
	 * @return
	 */
	List<Course> queryAllHistoryCourseBySid(String sid);
	
   /**
    * 根据教师员工号查询所有结课时间比当前晚的课程
    * @param tid
    * @return
    */
	List<Course> queryAllCourseByTid(String tid);
}
