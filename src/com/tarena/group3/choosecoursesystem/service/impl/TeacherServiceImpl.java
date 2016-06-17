package com.tarena.group3.choosecoursesystem.service.impl;

import java.util.List;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.StudentScoreEntity;
import com.tarena.group3.choosecoursesystem.service.ITeacherService;

/**
 * 教师Service实现类
 * @author xiexiujie
 *
 */
public class TeacherServiceImpl implements ITeacherService {
	//调用课程的Dao
	ICourseDao courseDao;
	//调用学生的Dao
	IStudentDao studentDao;
	//调用教师的Dao
	ITeacherDao teacherDao;
	
	public void setTeacherDao(ITeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	public void setCourseDao(ICourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}

	/**
	 * 批量地添加修改成功的学生信息和其成绩.状态
	 * @param studentInfo
	 * @return
	 */
	public void addStudentScores(List<StudentScoreEntity> studentsInfo) {
		for(StudentScoreEntity sse:studentsInfo){
			if(sse.getScore()!=null){
				studentDao.loadStudentCourseScore(sse.getStudent().getSid(),
					sse.getCid(), sse.getScore());
			}
		}
	}

	/**
	 * 通过课程的编号得到所选此课程的所有学生包括分数和状态
	 * @param id
	 * @return
	 */
	public List<StudentScoreEntity> getAllStudentsByCourseId(String cid) {
		if(cid!=null){
			return studentDao.queryAllStudentScoreByCid(cid);
		}
		return null;
	}
	
	/**
	 * 通过教师员工的编号得到其所代的所有结课时间比当前晚课程
	 * @param id
	 * @return
	 */
	public List<Course> getCourseByTeacherId(String tid) {
		if(tid!=null){
			return courseDao.queryAllCourseByTid(tid);
		}
		return null;
	}
	
	/**
	 * 修改教师密码
	 * @param tid
	 * @param password
	 */
	public void modifyTeacherPassword(String tid, String password) {
		teacherDao.updateTeacherPassword(tid, password);
	}
}
