package com.tarena.group3.choosecoursesystem.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import com.tarena.group3.choosecoursesystem.dao.ICourseDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.domain.ChooseCourseEntity;
import com.tarena.group3.choosecoursesystem.domain.Course;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.service.IFirstChooseCourseSerivce;

/**
 * 预选Service实现类
 * @author xiexiujie
 *
 */
public class FirstChooseCourseServiceImpl implements IFirstChooseCourseSerivce {
	
private ICourseDao dao;

private IStudentDao studentDao;

public void setDao(ICourseDao dao) {
	this.dao = dao;
}

public void setStudentDao(IStudentDao studentDao) {
	this.studentDao = studentDao;
}

public void cancleFirstChoose(Integer sid, Integer cid) {
	dao.cancleFirstChoose(sid, cid);
	}

public void firstChooseCourse(Integer sid, Integer cid) {
	dao.firstChooseCourse(sid, cid);
	
}

public List<ChooseCourseEntity> queryAllCourseForFirstChooseCourse(Date now, String cid, String cname, String tname) {
	return dao.queryAllCourseForFirstChooseCourse(now, cid, cname, tname);
}

public Set<Course> queryCourseBySidForFirstChoose(String sid) {
	return dao.queryCourseBySidForFirstChoose(sid);
}


public void updateStudentPassword(String sid, String password) {
	studentDao.updateStudentPassword(sid, password);
	
}

public Student queryStudentBySid(String sid) {

	return studentDao.queryStudentBySid(sid);
}


}
