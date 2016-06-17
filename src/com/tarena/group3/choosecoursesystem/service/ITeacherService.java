package com.tarena.group3.choosecoursesystem.service;

import java.util.List;

import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;

/**
 * 教师Service 
 * @author xiexiujie
 *
 */
public interface ITeacherService {
	/**
	 * 通过教师员工的编号得到其所代的所有结课时间比当前晚课程
	 * @param id
	 * @return
	 */
	public List<Course> getCourseByTeacherId(String tid);
	
	/**
	 * 通过课程的编号得到所选此课程的所有学生包括分数和状态
	 * @param id
	 * @return
	 */
	public List<StudentScoreEntity> getAllStudentsByCourseId(String cid);
	
	/**
	 * 批量地添加修改成功的学生信息和其成绩.状态
	 * @param studentInfo
	 * @return
	 */
	public void addStudentScores(List<StudentScoreEntity> studentsInfo);
	
	/**
	 * 修改教师密码
	 * @param tid
	 * @param password
	 */
	public void modifyTeacherPassword(String tid, String password);
}
