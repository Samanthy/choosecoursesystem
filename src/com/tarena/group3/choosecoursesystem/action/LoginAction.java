package com.tarena.group3.choosecoursesystem.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
 * 登录Action
 * @author group3
 *
 */
public class LoginAction extends Action {

	private IAdminDao adminDao;
	
	private ITeacherDao teacherDao;
	
	private IStudentDao studentDao;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		//判断当前用户是否已经登录
		if(hasLogin(username, request)){
			return mapping.findForward("fail");
		}
		//登录的用户类型
		int type  = Integer.parseInt(request.getParameter("select"));
		//学生登录
		if(type==1){
			//学生登录
			Student student = studentDao.login(username, password);
			//判断是否登录成功
			boolean flag = isLoginError(student, request);
			//登录失败返回登录页面，显示错误信息
			if(!flag){
				return mapping.findForward("fail");
			}
			//在session中记录登录的对象
			request.getSession().setAttribute("login_student", student);
			//在session中记录登录的类型
			request.getSession().setAttribute("login_type", 1);
		}else if(type==2){//教师登录
			Teacher teacher = teacherDao.login(username, password);
			boolean flag = isLoginError(teacher, request);
			if(!flag){
				return mapping.findForward("fail");
			}
			request.getSession().setAttribute("login_teacher", teacher);
			request.getSession().setAttribute("login_type", 2);
		}else{//管理员登录
			Admin admin = adminDao.adminLogin(username, password);
			boolean flag = isLoginError(admin, request);
			if(!flag){
				return mapping.findForward("fail");
			}
			request.getSession().setAttribute("login_admin", admin);
			request.getSession().setAttribute("login_type", 3);
		}
		CookieUtils.addCookie(response, "login_id", username);
		CookieUtils.addCookie(response, "login_type", type+"");
		return mapping.findForward("success");
	}
	
	/*
	 * 判断该用户名是否已登录
	 * @param username
	 * @return
	 */
	private boolean hasLogin(String username,HttpServletRequest request){
		ServletContext context = this.getServlet().getServletContext();
		Object o = context.getAttribute("login_user_map");
		Map map = null;
		//如果application中还没有login_user_map的数据，进行初始化
		if(o==null){
			map = new HashMap();
			map.put(username,request.getSession());
			context.setAttribute("login_user_map", map);
			return false;
		}else{
			map = (Map)o;
			boolean flag = false;
			//获取该用户的session对象
			Object session =  map.get(username);
			//如果该用户没有登录或session已经过期,返回false,并把该用户设为已登录状态
			if(session==null||((HttpSession)session).getAttribute("login_type")==null){
				map.put(username,request.getSession());
			}else{
				request.setAttribute("hasLoginError", username+"已经登录，请不要重复登录!");
				flag = true;
			}
			return flag;
		}
		
	}
	
	//传入登录对象，判断是否登录成功
	private boolean isLoginError(Object o,HttpServletRequest request){
		//登录对象为null，登录失败
		if(o==null){
			request.setAttribute("login_error", "用户名或密码错误！");
			return false;
		}else{
			return true;
		}
	}

	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void setTeacherDao(ITeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	public void setStudentDao(IStudentDao studentDao) {
		this.studentDao = studentDao;
	}

}
