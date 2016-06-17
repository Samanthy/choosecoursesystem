package com.tarena.group3.choosecoursesystem.dao;

import com.tarena.group3.choosecoursesystem.domain.Teacher;

/**
 * 教师Dao
 * @author xiexiujie
 *
 */
public interface ITeacherDao {
	
	/**
	 * 根据主键查找教师
	 * @param id
	 * @return
	 */
	Teacher queryTeacherById(Integer id);
	
	/**
	 * 根据教师员工号查找教师
	 * @param tid
	 * @return
	 */
	Teacher queryTeacherByTid(String tid);
	
	/**
	 * 根据课程编号查找代课老师
	 * @param cid
	 * @return
	 */
	Teacher queryTeacherByCid(String cid);
	
	/**
	 * 教师登录
	 * @param tid
	 * @param password
	 * @return
	 */
	Teacher login(String tid,String password);
	
	/**
	 * 修改教师密码
	 * @param tid
	 * @param password
	 */
	void updateTeacherPassword(String tid,String password);
}
