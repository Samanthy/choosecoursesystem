package com.tarena.group3.choosecoursesystem.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tarena.group3.choosecoursesystem.dao.IAdminDao;
import com.tarena.group3.choosecoursesystem.dao.IStudentDao;
import com.tarena.group3.choosecoursesystem.dao.ITeacherDao;
import com.tarena.group3.choosecoursesystem.domain.Admin;
import com.tarena.group3.choosecoursesystem.domain.Student;
import com.tarena.group3.choosecoursesystem.domain.Teacher;
import com.tarena.group3.choosecoursesystem.util.CookieUtils;

/**
 * 判断是否登录，进行转发
 * @author group3
 *
 */
public class IndexAction extends Action {
	
	private IStudentDao studentDao;
	
	private ITeacherDao teacherDao;
	
	private IAdminDao adminDao;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		//如果当前用户还没有登录
		if(request.getSession().getAttribute("login_type")==null){
			//到Cookie中取用户的登录信息
			String lt = CookieUtils.findCookieValue(request, "login_type");
			if(lt==null){//Cookie中无登录信息，返回登录页面
				return mapping.findForward("login");
			}else{//根据登录类型，登录不同的角色
				Integer type = new Integer(lt);
				String login_id = CookieUtils.findCookieValue(request, "login_id");
				if(type==1){
					Student student = studentDao.queryStudentBySid(login_id);
					request.getSession().setAttribute("login_student", student);
				}else if(type==2){
					Teacher teacher = teacherDao.queryTeacherByCid(login_id);
					request.getSession().setAttribute("login_teacher", teacher);
				}else if(type==3){
					Admin admin = adminDao.queryAdminByAid(login_id);
					request.getSession().setAttribute("login_admin", admin);
				}
				request.getSession().setAttribute("login_type", type);
				return mapping.findForward("main");
			}
		}else{
			return mapping.findForward("main");
		}
	}

	public IStudentDao getStudentDao() {
		return studentDao;
	}

	public ITeacherDao getTeacherDao() {
		return teacherDao;
	}

	public IAdminDao getAdminDao() {
		return adminDao;
	}

	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public void setTeacherDao(ITeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}
}
