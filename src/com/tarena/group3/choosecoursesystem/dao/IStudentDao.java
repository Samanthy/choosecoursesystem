package com.tarena.group3.choosecoursesystem.dao;

import java.util.List;

import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;

/**
 * 学生Dao
 * @author group3
 *
 */
public interface IStudentDao {
	
	/**
	 * 根据主键查找学生
	 * @param id
	 * @return
	 */
	Student queryStudentById(Integer id);
	
	/**
	 * 根据学号查找学生
	 * @param sid
	 * @return
	 */
	Student queryStudentBySid(String sid);
	
	/**
	 * 学生登录,用户名或密码错误返回null
	 * @param sid
	 * @param password
	 * @return
	 */
	Student login(String sid,String password);
	
	/**
	 * 修改学生的密码
	 * @param sid
	 * @param password
	 */
	void updateStudentPassword(String sid,String password);
	
	/**
	 * 修改学生某门课的成绩，修改完毕后将status设为1
	 * @param sid
	 * @param cid
	 * @param score
	 */
	void loadStudentCourseScore(String sid,String cid,double score);
	
	/**
	 * 查询某门课程所有的学生和他的成绩,封装成StudentScoreEntity
	 * @param cid
	 * @return
	 */
	List<StudentScoreEntity> queryAllStudentScoreByCid(String cid);
	
	/**
	 * 预选完后实施抽签操作
	 */
	void ballotGenerateAllStudents(int amount,String cid);
	
	/**
	 * 在临时表中查找出所有课程号cid
	 */
	List getAllCidFromTempTable();
	
	/**
	 *清空临时表
	 */
	void clearTempTable();
}
