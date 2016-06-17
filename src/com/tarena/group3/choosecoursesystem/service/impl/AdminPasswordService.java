package com.tarena.group3.choosecoursesystem.service.impl;

import com.tarena.group3.choosecoursesystem.dao.IAdminDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;

/**
 * 管理员密码管理Service
 * @author xiexiujie
 *
 */
public class AdminPasswordService {
	
	private IStudentDao studentDao;

	private ITeacherDao teacherDao;

	private IAdminDao adminDao;

	public boolean configPassword(String user, String account, String password) {
		if ("student".equals(user)) {
			if (studentDao.queryStudentBySid(account) != null) {
				System.out.println("AdminPasswordService:"+account+":"+password);
				studentDao.updateStudentPassword(account, password);
				return true;
			}
			return false;
		}
		if ("teacher".equals(user)) {
			if (teacherDao.queryTeacherByTid(account) != null) {
				teacherDao.updateTeacherPassword(account, password);
				return true;
			}
			return false;
		}
		if ("administrator".equals(user)) {
			adminDao.updateAdminPassword(account, password);
			return true;

		}
		return false;
	}

	public IAdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
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
}
